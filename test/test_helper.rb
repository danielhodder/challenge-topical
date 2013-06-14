ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require 'capybara/rails'
require 'capybara/poltergeist'

require 'factory_girl'
require 'database_cleaner'

require 'setup_helpers'

DatabaseCleaner.strategy = :truncation

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  teardown do
    DatabaseCleaner.clean
  end

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...

  include SetupHelpers

  include FactoryGirl::Syntax::Methods
end

class ActionDispatch::IntegrationTest
  Capybara.javascript_driver = :poltergeist

  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL
end