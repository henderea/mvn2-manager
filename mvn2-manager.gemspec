# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mvn2-manager/version'

Gem::Specification.new do |spec|
  spec.name          = 'mvn2-manager'
  spec.version       = Mvn2Manager::VERSION
  spec.authors       = ['Eric Henderson']
  spec.email         = ['henderea@gmail.com']
  spec.summary       = %q{A gem to manage mvn2 builds in multiple different folders}
  spec.description   = %q{Manages mvn2 builds in multiple different folders.  Allows you to set multiple configurations for each folder.  Will build projects in the order you specify, with the option to monitor filesystem changes in the src/ sub-folder and automatically trigger rebuilds when no changes have been made for a configurable amount of time.}
  spec.homepage      = 'https://github.com/henderea/mvn2-manager'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.3'

  spec.add_dependency 'everyday-cli-utils', '>= 1.7.3'
  spec.add_dependency 'mvn2', '>= 2.5.0'
  spec.add_dependency 'thor', '~> 0.19'
  spec.add_dependency 'listen', '~> 2.7'
  spec.add_dependency 'data_mapper', '~> 1.2'
  spec.add_dependency 'dm-sqlite-adapter', '~> 1.2'
end
