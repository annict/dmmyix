# frozen_string_literal: true

module Dmmyix
  class ImagesController < Dmmyix::ApplicationController
    def show
      image = Dmmyix::Image.new(params)
      image = image.convert
      send_file(image.path, type: image.mime_type, disposition: "inline")
    end
  end
end
