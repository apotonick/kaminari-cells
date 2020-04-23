# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kaminari/cells/version'

Gem::Specification.new do |spec|
  spec.name          = "kaminari-cells"
  spec.version       = Kaminari::Cells::VERSION
  spec.authors       = ["Nick Sutterer"]
  spec.email         = ["apotonick@gmail.com"]
  spec.summary       = %q{Kaminari pagination in Cells.}
  spec.description   = %q{Simple Kaminari pagination in Cells.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "kaminari", "~> 1.2.0"
  spec.add_dependency "cells", ">= 4.0.0", "<= 5.0.0"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "cells-erb"
  spec.add_development_dependency "cells-rails"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rails", "5.1.1"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "sqlite3"
end
