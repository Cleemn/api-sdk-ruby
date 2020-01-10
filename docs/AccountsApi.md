# SwaggerClient::AccountsApi

All URIs are relative to *https://sandbox.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_api_v3_accounts**](AccountsApi.md#get_api_v3_accounts) | **GET** /api/v3/accounts | 
[**get_api_v3_accounts_id**](AccountsApi.md#get_api_v3_accounts_id) | **GET** /api/v3/accounts/{id} | 


# **get_api_v3_accounts**
> Array&lt;Account&gt; get_api_v3_accounts



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AccountsApi.new

begin
  result = api_instance.get_api_v3_accounts
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_api_v3_accounts: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_api_v3_accounts_id**
> Account get_api_v3_accounts_id(id)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AccountsApi.new

id = 'id_example' # String | 


begin
  result = api_instance.get_api_v3_accounts_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_api_v3_accounts_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Account**](Account.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



