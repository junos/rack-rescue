# coding: utf-8
# lib = File.expand_path('../lib', __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require 'rack/rescue/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-rescue"
  spec.version       = '0.01'
  spec.authors       = ["Jun Li"]
  spec.email         = ["go2jun@gmail.com"]
  spec.description   = %q{rack rescue}
  spec.summary       = %q{rack rescue}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rack-timeout"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
