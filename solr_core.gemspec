# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solr_core/version'

Gem::Specification.new do |spec|
  spec.name          = "solr_core"
  spec.version       = SolrCore::VERSION
  spec.authors       = ["Gregory Ostermayr"]
  spec.email         = ["<gregory.ostermayr@gmail.com>"]
  spec.description   = %q{Create SOLR core directories}
  spec.summary       = %q{Create SOLR core directories. I got tired of creating SOLR core directories by hand.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
