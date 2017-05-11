# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "generate_template/version"

def non_test_files
  `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
end

Gem::Specification.new do |spec|
  spec.name          = "generate_template"
  spec.version       = GenerateTemplate::VERSION
  spec.authors       = ["Daniel Patterson"]
  spec.email         = ["dan24patt@gmail.com"]

  spec.summary       = "A configurable command-line tool to generate files from templates"
  spec.homepage      = "https://github.com/dp28/generate_template"
  spec.license       = "MIT"
  spec.files         = non_test_files
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.40.0"
  spec.add_development_dependency "guard-rspec", "~> 4.7"
  spec.add_development_dependency "guard-rubocop", "~> 1.0"
end
