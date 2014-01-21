# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/flowdock/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-flowdock"
  spec.version       = Capistrano::Flowdock::VERSION
  spec.authors       = ["Ville Lautanala"]
  spec.email         = ["lautis@gmail.com"]
  spec.description   = %q{Notify Flowdock flows about git-based Capistrano deployments}
  spec.summary       = %q{Flowdock notifier for Capistrano}
  spec.homepage      = "https://flowdock.com/help/capistrano"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "flowdock", "~> 0.3.1"
  spec.add_runtime_dependency "capistrano", "~> 3.0"
  spec.add_runtime_dependency "grit", "~> 2.4"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
