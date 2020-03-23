=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module Mooncard
  class UserProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param user_profile
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create(user_profile, opts = {})
      create_with_http_info(user_profile, opts)
      nil
    end

    # @param user_profile
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_with_http_info(user_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserProfilesApi.create ...'
      end
      # verify the required parameter 'user_profile' is set
      if @api_client.config.client_side_validation && user_profile.nil?
        fail ArgumentError, "Missing the required parameter 'user_profile' when calling UserProfilesApi.create"
      end
      # resource path
      local_var_path = '/api/v3/user_profiles'

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
      post_body = @api_client.object_to_http_body(user_profile)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserProfilesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(id, opts = {})
      delete_with_http_info(id, opts)
      nil
    end

    # @param id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserProfilesApi.delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserProfilesApi.delete"
      end
      # resource path
      local_var_path = '/api/v3/user_profiles/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserProfilesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param id
    # @param [Hash] opts the optional parameters
    # @return [UserProfile]
    def find(id, opts = {})
      data, _status_code, _headers = find_with_http_info(id, opts)
      data
    end

    # @param id
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserProfile, Fixnum, Hash)>] UserProfile data, response status code and response headers
    def find_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserProfilesApi.find ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserProfilesApi.find"
      end
      # resource path
      local_var_path = '/api/v3/user_profiles/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserProfilesApi#find\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page of results to fetch. (default to 1)
    # @option opts [Integer] :per_page Number of results to return per page.
    # @option opts [Array<String>] :employee_search_id_in id &#x3D; IN (?)
    # @option opts [String] :employee_search_email_cont email &#x3D; %?%
    # @option opts [String] :employee_search_name_cont firstname &#x3D; %?% OR lastname &#x3D; %?%
    # @option opts [Array<String>] :employee_search_status_in status &#x3D; IN (?)
    # @option opts [String] :employee_search_accounting_charge_account_eq accounting_charge_account &#x3D; ?
    # @option opts [String] :employee_search_accounting_employee_account_eq accounting_employee_account &#x3D; ?
    # @option opts [String] :employee_search_active_eq active &#x3D; ?
    # @option opts [String] :employee_search_analytic_code_eq analytic_code &#x3D; ?
    # @option opts [String] :employee_search_code_eq code &#x3D; ?
    # @option opts [String] :employee_search_expense_type_eq expense_type &#x3D; ?
    # @option opts [Array<String>] :employee_search_role_in role &#x3D; IN (?)
    # @option opts [Array<String>] :employee_search_position_in position &#x3D; IN (?)
    # @option opts [String] :employee_search_order_by Select which field you want to order the results by
    # @option opts [String] :employee_search_order Select whether the results should be sorted in ascending or descending order
    # @return [Array<UserProfile>]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page of results to fetch.
    # @option opts [Integer] :per_page Number of results to return per page.
    # @option opts [Array<String>] :employee_search_id_in id &#x3D; IN (?)
    # @option opts [String] :employee_search_email_cont email &#x3D; %?%
    # @option opts [String] :employee_search_name_cont firstname &#x3D; %?% OR lastname &#x3D; %?%
    # @option opts [Array<String>] :employee_search_status_in status &#x3D; IN (?)
    # @option opts [String] :employee_search_accounting_charge_account_eq accounting_charge_account &#x3D; ?
    # @option opts [String] :employee_search_accounting_employee_account_eq accounting_employee_account &#x3D; ?
    # @option opts [String] :employee_search_active_eq active &#x3D; ?
    # @option opts [String] :employee_search_analytic_code_eq analytic_code &#x3D; ?
    # @option opts [String] :employee_search_code_eq code &#x3D; ?
    # @option opts [String] :employee_search_expense_type_eq expense_type &#x3D; ?
    # @option opts [Array<String>] :employee_search_role_in role &#x3D; IN (?)
    # @option opts [Array<String>] :employee_search_position_in position &#x3D; IN (?)
    # @option opts [String] :employee_search_order_by Select which field you want to order the results by
    # @option opts [String] :employee_search_order Select whether the results should be sorted in ascending or descending order
    # @return [Array<(Array<UserProfile>, Fixnum, Hash)>] Array<UserProfile> data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserProfilesApi.list ...'
      end
      if @api_client.config.client_side_validation && opts[:'employee_search_status_in'] && !opts[:'employee_search_status_in'].all? { |item| ['unconfirmed', 'confirmed', 'archived'].include?(item) }
        fail ArgumentError, 'invalid value for "employee_search_status_in", must include one of unconfirmed, confirmed, archived'
      end
      if @api_client.config.client_side_validation && opts[:'employee_search_order_by'] && !['created_at', 'updated_at', 'code'].include?(opts[:'employee_search_order_by'])
        fail ArgumentError, 'invalid value for "employee_search_order_by", must be one of created_at, updated_at, code'
      end
      if @api_client.config.client_side_validation && opts[:'employee_search_order'] && !['asc', 'desc'].include?(opts[:'employee_search_order'])
        fail ArgumentError, 'invalid value for "employee_search_order", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/api/v3/user_profiles'

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'employee_search[email_cont]'] = opts[:'employee_search_email_cont'] if !opts[:'employee_search_email_cont'].nil?
      query_params[:'employee_search[name_cont]'] = opts[:'employee_search_name_cont'] if !opts[:'employee_search_name_cont'].nil?
      query_params[:'employee_search[accounting_charge_account_eq]'] = opts[:'employee_search_accounting_charge_account_eq'] if !opts[:'employee_search_accounting_charge_account_eq'].nil?
      query_params[:'employee_search[accounting_employee_account_eq]'] = opts[:'employee_search_accounting_employee_account_eq'] if !opts[:'employee_search_accounting_employee_account_eq'].nil?
      query_params[:'employee_search[active_eq]'] = opts[:'employee_search_active_eq'] if !opts[:'employee_search_active_eq'].nil?
      query_params[:'employee_search[analytic_code_eq]'] = opts[:'employee_search_analytic_code_eq'] if !opts[:'employee_search_analytic_code_eq'].nil?
      query_params[:'employee_search[code_eq]'] = opts[:'employee_search_code_eq'] if !opts[:'employee_search_code_eq'].nil?
      query_params[:'employee_search[expense_type_eq]'] = opts[:'employee_search_expense_type_eq'] if !opts[:'employee_search_expense_type_eq'].nil?
      query_params[:'employee_search[order_by]'] = opts[:'employee_search_order_by'] if !opts[:'employee_search_order_by'].nil?
      query_params[:'employee_search[order]'] = opts[:'employee_search_order'] if !opts[:'employee_search_order'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}
      query_params['employee_search[id_in]'] = @api_client.build_collection_param(opts[:'employee_search_id_in'], :multi) if !opts[:'employee_search_id_in'].nil?
      query_params['employee_search[status_in]'] = @api_client.build_collection_param(opts[:'employee_search_status_in'], :multi) if !opts[:'employee_search_status_in'].nil?
      query_params['employee_search[role_in]'] = @api_client.build_collection_param(opts[:'employee_search_role_in'], :multi) if !opts[:'employee_search_role_in'].nil?
      query_params['employee_search[position_in]'] = @api_client.build_collection_param(opts[:'employee_search_position_in'], :multi) if !opts[:'employee_search_position_in'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<UserProfile>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserProfilesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # @param id
    # @param user_profile_body
    # @param [Hash] opts the optional parameters
    # @return [UserProfile]
    def update(id, user_profile_body, opts = {})
      data, _status_code, _headers = update_with_http_info(id, user_profile_body, opts)
      data
    end

    # @param id
    # @param user_profile_body
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserProfile, Fixnum, Hash)>] UserProfile data, response status code and response headers
    def update_with_http_info(id, user_profile_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserProfilesApi.update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UserProfilesApi.update"
      end
      # verify the required parameter 'user_profile_body' is set
      if @api_client.config.client_side_validation && user_profile_body.nil?
        fail ArgumentError, "Missing the required parameter 'user_profile_body' when calling UserProfilesApi.update"
      end
      # resource path
      local_var_path = '/api/v3/user_profiles/{id}'.sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(user_profile_body)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserProfilesApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
