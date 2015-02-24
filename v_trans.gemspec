# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'v_trans/version'

Gem::Specification.new do |spec|
  spec.name          = "v_trans"
  spec.version       = VTrans::VERSION
  spec.authors       = ["Vinh Nguyen Le"]
  spec.email         = ["vinh.nguyenlexuan@asnet.com.vn"]
  spec.summary       = %q{A simple gem help you translate the text.}
  spec.description   = %q{Using Google Translate API to translate any the text.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2.0"

  spec.add_runtime_dependency "rest-client", "~> 1.7.3"
end
