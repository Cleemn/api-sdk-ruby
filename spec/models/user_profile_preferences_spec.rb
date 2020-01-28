=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::UserProfilePreferences
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserProfilePreferences' do
  before do
    # run before each test
    @instance = SwaggerClient::UserProfilePreferences.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserProfilePreferences' do
    it 'should create an instance of UserProfilePreferences' do
      expect(@instance).to be_instance_of(SwaggerClient::UserProfilePreferences)
    end
  end
  describe 'test attribute "auto_check_rebilling"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "use_km_expenses"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "use_manual_expenses"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end