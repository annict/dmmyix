$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dmmyix/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dmmyix"
  s.version     = Dmmyix::VERSION
  s.authors     = ["Koji Shimba"]
  s.email       = ["me@shimba.co"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Dmmyix."
  s.description = "TODO: Description of Dmmyix."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "pg"
end
