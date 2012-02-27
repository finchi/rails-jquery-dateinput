$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails-jquery-dateinput/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails-jquery-dateinput"
  s.version     = RailsJqueryDateinput::VERSION
  s.authors     = ["Christian Finck"]
  s.email       = ["christian@finck.at"]
  s.homepage    = "https://github.com/finchi/rails-jquery-dateinput"
  s.summary     = "jQuery tools dateinput for Rails date selects"
  s.description = "Replaces the selects, created by the rails date input helper, with a jQuery tools dateinput"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'coffee-rails'
end
