# frozen_string_literal: true

module Dmmyix
  class Image
    def initialize(params)
      @params = params
      @image = MiniMagick::Image.open(image_path)
    end

    def convert
      @image.combine_options do |b|
        b.gravity(image_gravity)

        if @params[:fit] == "crop"
          resize_params = if resized_image_height < image_height
            "x#{image_height}"
          else
            "#{image_width}x"
          end
          b.resize(resize_params)
          b.extent("#{image_width}x#{image_height}")
        else
          b.resize("#{image_width}x#{image_height}")
        end

        b.blur("0x#{image_blur}")
        b.strip
      end
      @image.format("jpg")
      @image.write("/tmp/#{@image.signature}.jpg")
      @image
    end

    private

    def image_path
      path = "public/#{@params[:path]}"
      return path if @params[:format].blank?
      "#{path}.#{@params[:format]}"
    end

    def image_width
      (@params[:w].presence || @image.width).to_i
    end

    def image_height
      (@params[:h].presence || @image.height).to_i
    end

    def resized_image_height
      (@image.height * image_width) / @image.width
    end

    def image_gravity
      case @params[:crop]
      when "top" then "North"
      when "bottom" then "South"
      when "left" then "West"
      when "right" then "East"
      else
        "Center"
      end
    end

    def image_blur
      (@params[:blur].presence || 0).to_i / 10
    end
  end
end
