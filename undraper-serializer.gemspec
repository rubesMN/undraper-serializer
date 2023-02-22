lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'jsonapi/serializer/version'

Gem::Specification.new do |gem|
  gem.name = 'jsonapi-serializer'
  gem.version = UNDRAPER::Serializer::VERSION

  gem.authors = ['Netflix originally, JSON:API Serializer Community, Eric Roubal']
  gem.email = ''

  gem.summary = 'Fast JSON serialization library'
  gem.description = 'A fast super-memory-efficient serializer for Ruby Objects. '\
    'Not Draper, not called a decorator, just a semi-opinionated declarative json serialization, written in Ruby, fast, nested, and deeply selectable.'
  gem.homepage = 'https://github.com/jsonapi-serializer/jsonapi-serializer'
  gem.licenses = ['Apache-2.0']
  gem.files = Dir['lib/**/*']
  gem.require_paths = ['lib']
  gem.extra_rdoc_files = ['LICENSE.txt', 'README.md']

  gem.add_runtime_dependency('activesupport', '>= 4.2')

  gem.add_development_dependency('activerecord')
  gem.add_development_dependency('bundler')
  gem.add_development_dependency('byebug')
  gem.add_development_dependency('ffaker')
  gem.add_development_dependency('rake')
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('rubocop')
  gem.add_development_dependency('rubocop-performance')
  gem.add_development_dependency('rubocop-rspec')
  gem.add_development_dependency('simplecov')
  gem.add_development_dependency('sqlite3')
end
