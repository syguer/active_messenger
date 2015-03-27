lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_messenger/version'

Gem::Specification.new do |spec|
  spec.name          = "activemessenger"
  spec.version       = ActiveMessenger::VERSION
  spec.authors       = ["Keisuke Izumiya"]
  spec.email         = ["ksk.i.530@gmail.com"]
  spec.summary       = %q{The wrapper of messaging application.}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/syguer/active_messenger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport', '>= 4.0'
  spec.add_dependency 'hipchat', '>= 1.4'
  spec.add_dependency 'slack-notifier', '>= 1.1'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
