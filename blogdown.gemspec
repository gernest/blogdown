# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blogdown/version'

Gem::Specification.new do |spec|
  spec.name          = "blogdown"
  spec.version       = Blogdown::VERSION
  spec.authors       = ["gernest"]
  spec.email         = ["geofreyernest@live.com"]
  spec.summary       = %q{Write in markdown for your web based rich text editor}
  spec.description = %q{ A Simple Markdown Solution With synntax highlighing}
  spec.homepage      = "https://github.com/gernest/blogdown"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake","~> 10.3.2"
  spec.add_development_dependency "rspec","~>3.0.0"
  spec.add_development_dependency "coveralls"

  spec.add_dependency "redcarpet"
  spec.add_dependency "github-markdown"

  spec.add_dependency "coderay", "~> 1.1.0"
  spec.add_dependency "thor", "~> 0.19.1"
  spec.add_dependency "sinatra", "~> 1.4.5"

end
