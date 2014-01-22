# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'html2json/version'

Gem::Specification.new do |spec|
  spec.name          = "html2json"
  spec.version       = Html2json::VERSION
  spec.authors       = ["Anoop Nair"]
  spec.email         = ["anoopmail@gmail.com"]
  spec.summary       = %q{Gem to scrape a webpage and renders into JSON.}
  spec.description   = %q{Gem to scrape a webpage and renders into JSON.}
  spec.homepage      = "https://github.com/anoopmail/html2json"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "rails"
  spec.add_runtime_dependency "nokogiri"
end
