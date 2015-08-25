# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'banregio/version'

Gem::Specification.new do |spec|
  spec.name          = "banregio"
  spec.version       = Banregio::VERSION
  spec.authors       = ["Abraham Kuri"]
  spec.email         = ["kurenn@icalialabs.com"]

  spec.summary       = %q{The official BanRegio API wrapper}
  spec.description   = %q{The official SDK for BanRegio REST API}
  spec.homepage      = "https://github.com/banregiolabs/banregio-rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.13.5"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0.10"
end
