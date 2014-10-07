# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplehttp.rb'

Gem::Specification.new do |spec|
  spec.name          = "simplehttp"
  spec.version       = SimpleHttp.version
  spec.authors       = ["Thiago Scalone"]
  spec.email         = ["thiago@scalone.com.br"]
  spec.summary       = "CloudWalk POC to load rubygems on mruby"
  spec.description   = "SimpleHttp POC"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.extensions = ["ext/simplehttp/mruby.rb"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
