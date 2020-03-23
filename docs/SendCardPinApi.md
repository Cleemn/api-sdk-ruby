# Mooncard::SendCardPinApi

All URIs are relative to *https://app.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**send**](SendCardPinApi.md#send) | **POST** /api/v3/send_card_pin | 


# **send**
> send(send_card_pin)



Send card pin code

### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::SendCardPinApi.new

send_card_pin = Mooncard::PostApiV3SendCardPin.new # PostApiV3SendCardPin | 


begin
  api_instance.send(send_card_pin)
rescue Mooncard::ApiError => e
  puts "Exception when calling SendCardPinApi->send: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_card_pin** | [**PostApiV3SendCardPin**](PostApiV3SendCardPin.md)|  | 

### Return type

nil (empty response body)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



