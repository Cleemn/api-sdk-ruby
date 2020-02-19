# Mooncard::CardAssignApi

All URIs are relative to *https://app.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](CardAssignApi.md#create) | **POST** /api/v3/card_assign | 


# **create**
> create(card_assign)



Assign a card to an user

### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::CardAssignApi.new

card_assign = Mooncard::PostApiV3CardAssign.new # PostApiV3CardAssign | 


begin
  api_instance.create(card_assign)
rescue Mooncard::ApiError => e
  puts "Exception when calling CardAssignApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **card_assign** | [**PostApiV3CardAssign**](PostApiV3CardAssign.md)|  | 

### Return type

nil (empty response body)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



