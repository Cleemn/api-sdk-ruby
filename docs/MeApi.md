# SwaggerClient::MeApi

All URIs are relative to *https://sandbox.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_api_v3_me**](MeApi.md#get_api_v3_me) | **GET** /api/v3/me | 


# **get_api_v3_me**
> get_api_v3_me



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeApi.new

begin
  api_instance.get_api_v3_me
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeApi->get_api_v3_me: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



