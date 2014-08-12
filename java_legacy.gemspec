$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "java_legacy_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "java_legacy_rails"
  s.version     = JavaLegacyRails::VERSION
  s.authors     = ["Daniel Henze"]
  s.email       = ["dhenze@gmail.com"]
  s.homepage    = "github.com/dhenze/java_legacy_rails"
  s.summary     = "Collection of helpers to support my rails projects with legacy issues from Java"
  s.description = "While porting a legacy project from a Java platform I faced different situations I needed specific adoptions, e.g. a custom coder for seriailization to support values separated by commata and space (, ) instead of just a commata (,). Therefore this plugin was born. May it be of use to anyone out there."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2.19"
  s.add_dependency "sqlite3"
end
