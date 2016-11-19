# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pinhead/version'

Gem::Specification.new do |spec|
  spec.name          = "pinhead"
  spec.version       = Pinhead::VERSION
  spec.authors       = ["Jens Skott"]
  spec.email         = ["jens.skott@gmail.com"]

  spec.summary       = %q{Control ECS clusters, tasks and services.}
  spec.homepage      = "https://github.com/jensskott/pinhead"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Prod gems
  spec.add_runtime_dependency "aws-sdk", "2.6.14"
  spec.add_runtime_dependency "trollop", "2.1.2"

  # Dev and test gems
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
