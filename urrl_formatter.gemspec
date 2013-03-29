# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'urrl_formatter/version'

Gem::Specification.new do |gem|
  gem.name          = "urrl_formatter"
  gem.version       = UrrlFormatter::VERSION
  gem.authors       = ["Valmir Dimas"]
  gem.email         = ["valmirdimas@gmail.com"]
  gem.summary       = %q{Format and validate a URL in Active Record}
  gem.description   = %q{Example of creating a Ruby gem for ASCIIcast #301}  
  gem.homepage      = "http://github.com/Valmasso/urrl_formatter"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "supermodel"
end
