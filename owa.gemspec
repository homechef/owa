# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "owa/version"

Gem::Specification.new do |spec|
  spec.name          = "owa"
  spec.version       = Owa::VERSION
  spec.authors       = ["hosseintoussi"]
  spec.email         = ["sltoussi@gmail.com"]

  spec.summary       = %q{OWM API client}
  spec.description   = %q{This gem is a simple client for OWM}
  spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.6"
end
