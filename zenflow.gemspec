# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'yaml'
require 'zenflow/helpers/version'
require 'zenflow/version'

Gem::Specification.new do |s|
  s.name        = "zenflow"
  s.version     = Zenflow::VERSION.to_s
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brandon Arbini", "Chris Warren", "Adam Kittelson"]
  s.email       = ["b@zencoder.com", "c@zencoder.com", "a@zencoder.com"]
  s.homepage    = "http://github.com/zencoder/zenflow"
  s.summary     = "Branch management and deployment tool."
  s.executables << "zenflow"
  s.add_dependency "thor", "~> 0.18.1"
  s.add_dependency "colored", "~> 1.2"
  s.add_dependency "terminal-table", "~> 1.4.5"
  s.add_dependency "httparty", "~> 0.11.0"
  s.add_development_dependency('rspec', '~> 2.14')
  s.add_development_dependency('simplecov', '~> 0.7.1')
  s.add_development_dependency('debugger', '~> 1.6.1')
  s.add_development_dependency('fuubar', '~> 1.1.1')
  s.add_development_dependency('guard-rspec', '~> 3.0.2')
  s.files = `git ls-files`.split("\n")
  s.require_path = "lib"
end