# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sadist/version'

Gem::Specification.new do |spec|
  spec.name          = "sadist"
  spec.version       = Sadist::VERSION
  spec.authors       = ["Joe Francis"]
  spec.email         = ["joe@lostapathy.com"]

  spec.summary       = %q{Abuse your code}
  spec.description   = %q{Sadist provides a collection of linters and quality tools to abuse your ruby application to find security and quality issues.}
  spec.homepage      = "https://github.com/lostapathy/sadist"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'

  spec.add_dependency 'bundler-audit', '>= 0.5.0'
  spec.add_dependency 'flog', '>= 4.6.1'
  spec.add_dependency 'flay', '>= 2.9'
  # spec.add_dependency 'flay-haml', '~> 0.0.3' # removing until flay-haml supports haml 5
  spec.add_dependency 'brakeman', '>= 3.6.2'
  spec.add_dependency 'reek', '>= 4.7'
  spec.add_dependency 'haml_lint', '>= 0.26.0'
  spec.add_dependency 'scss_lint', '>= 0.53.0'
  spec.add_dependency 'simplecov', '>= 0.14.1'
  spec.add_dependency 'rubocop', '>= 0.49.1'
end
