require 'simplecov'

SimpleCov.start do
  add_group 'Lib', 'lib'
  add_group 'Tests', 'spec'
end
SimpleCov.minimum_coverage 80

require 'active_support/core_ext/object/json'
require 'jsonapi/serializer'
require 'ffaker'
require 'rspec'
require 'byebug'
require 'securerandom'

Dir[File.expand_path('spec/fixtures/*.rb')].sort.each { |f| require f }

RSpec.configure do |config|

  config.mock_with :rspec
  config.filter_run_when_matching :focus
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
