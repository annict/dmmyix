# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("../lib", __FILE__)

require "dmmyix/version"

Gem::Specification.new do |s|
  s.name        = "dmmyix"
  s.version     = Dmmyix::VERSION
  s.authors     = ["Koji Shimba"]
  s.email       = ["me@shimba.co"]
  s.homepage    = "https://github.com/annict/dmmyix"
  s.summary     = "A dummy of Imgix for Rails applications."
  s.description = s.summary
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
  s.add_dependency "mini_magick", "~> 4.5.0"
end
