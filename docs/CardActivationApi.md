# Mooncard::CardActivationApi

All URIs are relative to *https://app.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CardActivationApi.md#create) | **POST** /api/v3/card_activation | 


# **create**
> create(card_activation)



Card activation

### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::CardActivationApi.new

card_activation = Mooncard::PostApiV3CardActivation.new # PostApiV3CardActivation | 


begin
  api_instance.create(card_activation)
rescue Mooncard::ApiError => e
  puts "Exception when calling CardActivationApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **card_activation** | [**PostApiV3CardActivation**](PostApiV3CardActivation.md)|  | 

### Return type

nil (empty response body)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



