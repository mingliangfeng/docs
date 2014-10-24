$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "docs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "docs"
  s.version     = Docs::VERSION
  s.authors     = ["Andrew Feng"]
  s.email       = ["mingliangfeng@gmail.com"]
  s.homepage    = "https://github.com/mingliangfeng/docs"
  s.summary     = "Document Management System"
  s.description = "An open source DMS - Document Management System as Rails engine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1.5"
  s.add_dependency 'coffee-rails', '~> 4.0.0'
  s.add_dependency 'jquery-rails'
  s.add_dependency "devise"
  s.add_dependency 'less-rails'
  s.add_dependency 'execjs'
  s.add_dependency 'therubyracer'
  s.add_dependency 'acts-as-taggable-on', '~> 3.4'
  s.add_dependency "paperclip", "~> 4.2"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails', '~> 3.0.0'
  s.add_development_dependency 'factory_girl_rails'
end
