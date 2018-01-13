# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version.rb'

Gem::Specification.new do |spec|
  spec.name          = "funky-simplehttp"
  spec.version       = SimpleHttp.version
  spec.authors       = ["Thiago Scalone"]
  spec.email         = ["thiago@scalone.com.br"]
  spec.summary       = "Simplehttp"
  spec.description   = "Minimal HTTP implementation"
  spec.homepage      = "http://github.com/cloudwalkio/funky-simplehttp"
  spec.license       = "MIT"
  spec.files         = %w(.gitignore Gemfile Gemfile.lock README.md Rakefile funky-simplehttp.gemspec lib/version.rb out/funky-simplehttp/main.mrb)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
