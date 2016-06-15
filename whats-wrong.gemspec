$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "whats-wrong/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "whats-wrong"
  s.version     = WhatsWrong::VERSION
  s.authors     = ["bastengao"]
  s.email       = ["bastengao@gmail.com"]
  s.homepage    = "https://github.com/bastengao/whats-wrong"
  s.summary     = "Override error pages for Rails"
  s.description = "Override error pages for Rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4"

  s.add_development_dependency "sqlite3"
end
