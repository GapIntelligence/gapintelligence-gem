# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gap_intelligence/version'

Gem::Specification.new do |spec|
  spec.name          = 'gap_intelligence'
  spec.version       = GapIntelligence::VERSION
  spec.authors       = ['Cesar Camacho']
  spec.email         = ['ccamacho@gapintelligence.com']
  spec.summary       = 'A Ruby interface to the gap intelligence API.'
  spec.description   = 'A Ruby interface to the gap intelligence API.'
  spec.homepage      = ''
  spec.license       = ''

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files  = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'bin'

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'webmock', '~> 1.24.2'

  spec.add_runtime_dependency('faraday', '~> 0.9.2')
  spec.add_runtime_dependency('faraday_middleware', '~> 0.10.0')
end
