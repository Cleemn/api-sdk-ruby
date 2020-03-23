# Mooncard::ReceiptsApi

All URIs are relative to *https://app.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ReceiptsApi.md#create) | **POST** /api/v3/receipts | 
[**delete**](ReceiptsApi.md#delete) | **DELETE** /api/v3/receipts/{id} | 
[**find**](ReceiptsApi.md#find) | **GET** /api/v3/receipts/{id} | 
[**get_api_v3_receipts**](ReceiptsApi.md#get_api_v3_receipts) | **GET** /api/v3/receipts | 
[**update**](ReceiptsApi.md#update) | **PUT** /api/v3/receipts/{id} | 


# **create**
> create(api_v3_receipts)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::ReceiptsApi.new

api_v3_receipts = Mooncard::PostApiV3Receipts.new # PostApiV3Receipts | 


begin
  api_instance.create(api_v3_receipts)
rescue Mooncard::ApiError => e
  puts "Exception when calling ReceiptsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_v3_receipts** | [**PostApiV3Receipts**](PostApiV3Receipts.md)|  | 

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

api_instance = Mooncard::ReceiptsApi.new

id = 'id_example' # String | 


begin
  api_instance.delete(id)
rescue Mooncard::ApiError => e
  puts "Exception when calling ReceiptsApi->delete: #{e}"
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
> Receipt find(id)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::ReceiptsApi.new

id = 'id_example' # String | 


begin
  result = api_instance.find(id)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling ReceiptsApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Receipt**](Receipt.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_api_v3_receipts**
> Array&lt;Receipt&gt; get_api_v3_receipts(opts)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::ReceiptsApi.new

opts = { 
  page: 1, # Integer | Page of results to fetch.
  per_page: 56 # Integer | Number of results to return per page.
}

begin
  result = api_instance.get_api_v3_receipts(opts)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling ReceiptsApi->get_api_v3_receipts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page of results to fetch. | [optional] [default to 1]
 **per_page** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**Array&lt;Receipt&gt;**](Receipt.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> Receipt update(id, api_v3_receipts)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::ReceiptsApi.new

id = 'id_example' # String | 

api_v3_receipts = Mooncard::PutApiV3Receipts.new # PutApiV3Receipts | 


begin
  result = api_instance.update(id, api_v3_receipts)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling ReceiptsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **api_v3_receipts** | [**PutApiV3Receipts**](PutApiV3Receipts.md)|  | 

### Return type

[**Receipt**](Receipt.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



