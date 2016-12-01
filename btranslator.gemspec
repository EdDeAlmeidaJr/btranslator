# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'btranslator/version'

Gem::Specification.new do |spec|
  spec.name          = "gtranslator"
  spec.version       = BTranslator::VERSION
  spec.authors       = ["Ed de Almeida"]
  spec.email         = ["edvaldoajunior@gmail.com"]

  spec.summary       = "Provides online translations based on Bing Translator."
  spec.description   = "Provides online translations based on Bing Translator. Uses HTTParty to query Bing Translator and JSON to provide the results."
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "httparty", "~> 0.14"
  spec.add_runtime_dependency "addressable", "~> 2.5"

end
