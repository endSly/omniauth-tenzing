# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-linkedin/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-tenzing"
  s.version     = Omniauth::Tenzing::VERSION
  s.authors     = ["Alan Skorkin", "Endika Gutiérrez"]
  s.email       = ["alan@skorks.com", "me@endika.net"]
  s.homepage    = "https://github.com/endSly/omniauth-tenzing"
  s.summary     = %q{Tenzing strategy for OmniAuth.}
  s.description = %q{Tenzing strategy for OmniAuth.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'

  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'rack-test'
end
