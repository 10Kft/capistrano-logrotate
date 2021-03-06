# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/logrotate/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-logrotate"
  spec.version       = "1.0.0"
  spec.authors       = ["Jun Lin"]
  spec.email         = ["linjunpop@gmail.com"]

  spec.summary       = %q{Logrotate integration for Capistrano.}
  spec.description   = %q{Logrotate integration for Capistrano.}
  spec.homepage      = "https://github.com/linjunpop/capistrano-logrotate"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '~> 3.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
