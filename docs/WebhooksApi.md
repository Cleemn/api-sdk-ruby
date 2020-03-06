# Mooncard::WebhooksApi

All URIs are relative to *https://app.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](WebhooksApi.md#create) | **POST** /api/v3/webhooks | 
[**delete**](WebhooksApi.md#delete) | **DELETE** /api/v3/webhooks/{id} | 
[**find**](WebhooksApi.md#find) | **GET** /api/v3/webhooks/{id} | 
[**list**](WebhooksApi.md#list) | **GET** /api/v3/webhooks | 
[**put_api_v3_webhooks_id**](WebhooksApi.md#put_api_v3_webhooks_id) | **PUT** /api/v3/webhooks/{id} | 


# **create**
> create(webhook)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::WebhooksApi.new

webhook = Mooncard::PostApiV3Webhooks.new # PostApiV3Webhooks | 


begin
  api_instance.create(webhook)
rescue Mooncard::ApiError => e
  puts "Exception when calling WebhooksApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook** | [**PostApiV3Webhooks**](PostApiV3Webhooks.md)|  | 

### Return type

nil (empty response body)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete**
> delete(id)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::WebhooksApi.new

id = 'id_example' # String | 


begin
  api_instance.delete(id)
rescue Mooncard::ApiError => e
  puts "Exception when calling WebhooksApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **find**
> Webhook find(id)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::WebhooksApi.new

id = 'id_example' # String | 


begin
  result = api_instance.find(id)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling WebhooksApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;Webhook&gt; list(opts)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::WebhooksApi.new

opts = { 
  page: 1, # Integer | Page of results to fetch.
  per_page: 56 # Integer | Number of results to return per page.
}

begin
  result = api_instance.list(opts)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling WebhooksApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page of results to fetch. | [optional] [default to 1]
 **per_page** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_api_v3_webhooks_id**
> Webhook put_api_v3_webhooks_id(id, webhook)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::WebhooksApi.new

id = 'id_example' # String | 

webhook = Mooncard::PutApiV3Webhooks.new # PutApiV3Webhooks | 


begin
  result = api_instance.put_api_v3_webhooks_id(id, webhook)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling WebhooksApi->put_api_v3_webhooks_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **webhook** | [**PutApiV3Webhooks**](PutApiV3Webhooks.md)|  | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



