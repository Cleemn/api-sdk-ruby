=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'

# Unit tests for Mooncard::SendCardPinApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SendCardPinApi' do
  before do
    # run before each test
    @instance = Mooncard::SendCardPinApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SendCardPinApi' do
    it 'should create an instance of SendCardPinApi' do
      expect(@instance).to be_instance_of(Mooncard::SendCardPinApi)
    end
  end

  # unit tests for send
  # Send card pin code
  # @param send_card_pin 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
