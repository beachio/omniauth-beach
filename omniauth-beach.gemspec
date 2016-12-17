# coding: utf-8
require File.expand_path('../lib/omniauth-beach/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "omniauth-beach"
  spec.version       = Omniauth::Beach::VERSION
  spec.authors       = ["Steve Schofield"]
  spec.email         = ["steve@beach.io"]
  spec.summary       = %q{OmniAuth strategy for Beach.}
  spec.description   = %q{OmniAuth strategy for Beach.}
  spec.homepage      = "https://github.com/beachio/omniauth-beach"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.require_paths = ["lib"]


  spec.add_dependency 'omniauth', '~> 1.0'
    # Nothing lower than omniauth-oauth2 1.1.1
    # http://www.rubysec.com/advisories/CVE-2012-6134/
  spec.add_dependency 'omniauth-oauth2', '>= 1.1.1', '< 2.0'
  spec.add_development_dependency 'rspec', '3.2.0'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
