=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'uri'

module Mooncard
  class CardActivationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Card activation
    # @param card_activation 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create(card_activation, opts = {})
      create_with_http_info(card_activation, opts)
      nil
    end

    # Card activation
    # @param card_activation 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(card_activation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardActivationApi.create ...'
      end
      # verify the required parameter 'card_activation' is set
      if @api_client.config.client_side_validation && card_activation.nil?
        fail ArgumentError, "Missing the required parameter 'card_activation' when calling CardActivationApi.create"
      end
      # resource path
      local_var_path = '/api/v3/card_activation'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(card_activation)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardActivationApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
