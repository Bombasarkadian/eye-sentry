# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eye/notify/sentry/version'

Gem::Specification.new do |spec|
  spec.name          = "eye-sentry"
  spec.version       = Eye::Notify::Sentry::VERSION
  spec.authors       = ["Maciej Głowacki"]
  spec.email         = ["bombasarkadian@gmail.com"]
  spec.summary       = %q{Eye to sentry notification}
  spec.description   = %q{Eye to sentry notification}
  spec.homepage      = "https://github.com/bombasarkadian/eye-sentry"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "sentry-raven", "~> 2.7"
  spec.add_runtime_dependency "eye", "~> 0.10"
end
