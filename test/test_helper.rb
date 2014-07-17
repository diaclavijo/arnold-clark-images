ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL
end


class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
  Capybara.app = Arnoldclark::Application
  Capybara.current_driver = Capybara.javascript_driver # :selenium by default

end
