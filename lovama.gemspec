# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lovama/version'

Gem::Specification.new do |spec|
  spec.name          = "lovama"
  spec.version       = Lovama::VERSION
  spec.authors       = ["Marie Markwell"]
  spec.email         = ["me@marie.so"]
  spec.summary       = %q{Adds local_variable_get and local_variable_set}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/ruby-wot/lovama"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "wot-utilities"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
