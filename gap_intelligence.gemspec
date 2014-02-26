# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gap_intelligence/version'

Gem::Specification.new do |spec|
  spec.name          = "gap_intelligence"
  spec.version       = GapIntelligence::VERSION
  spec.authors       = ["Cesar Camacho", "Josh Manuel", "Dave Patel"]
  spec.email         = ["ccamacho@gapintelligence.com"]
  spec.summary       = %q{A Ruby interface to the gap intelligence API.}
  spec.description   = %q{A Ruby interface to the gap intelligence API.}
  spec.homepage      = ""
  spec.license       = ""

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "webmock", "~> 1.17.3"
  spec.add_development_dependency "minitest", "~> 5.2.3"

  spec.add_runtime_dependency "multi_json", "~> 1.8.4"
  spec.add_runtime_dependency "faraday", "~> 0.9"
end
