# spec/spec_helper.rb

RSpec.configure do |config|
  # Add any custom configuration settings here
  
  # Include spec files in the 'spec' directory
  config.pattern = 'spec/**/*_spec.rb'
  
  # Enable color output in test results
  config.color = true
  
  # Set the formatter for test results
  config.formatter = :documentation
end