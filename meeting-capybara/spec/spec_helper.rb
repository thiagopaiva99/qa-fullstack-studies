require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

  config.before(:example) do
    page.current_window.resize_to(1280, 800)
  end

  config.after(:each) do |example|
    example_group = example.example_group.to_s.split('::')[2].downcase.tr(' ', '_')
    file_name = example.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')

    if example.exception
      page.save_screenshot('logs/fails/' + file_name + '.png')
    else
      page.save_screenshot('logs/' + example_group + '/' + file_name + '.png')
    end
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 5
  config.app_host = 'http://training-wheels-protocol.herokuapp.com'
end