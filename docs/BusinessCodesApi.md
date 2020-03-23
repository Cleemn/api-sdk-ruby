# Mooncard::BusinessCodesApi

All URIs are relative to *https://app.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](BusinessCodesApi.md#create) | **POST** /api/v3/business_codes | 
[**delete**](BusinessCodesApi.md#delete) | **DELETE** /api/v3/business_codes/{id} | 
[**find**](BusinessCodesApi.md#find) | **GET** /api/v3/business_codes/{id} | 
[**list**](BusinessCodesApi.md#list) | **GET** /api/v3/business_codes | 
[**update**](BusinessCodesApi.md#update) | **PUT** /api/v3/business_codes/{id} | 


# **create**
> create(business_code)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::BusinessCodesApi.new

business_code = Mooncard::PostApiV3BusinessCodes.new # PostApiV3BusinessCodes | 


begin
  api_instance.create(business_code)
rescue Mooncard::ApiError => e
  puts "Exception when calling BusinessCodesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **business_code** | [**PostApiV3BusinessCodes**](PostApiV3BusinessCodes.md)|  | 

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

api_instance = Mooncard::BusinessCodesApi.new

id = 'id_example' # String | 


begin
  api_instance.delete(id)
rescue Mooncard::ApiError => e
  puts "Exception when calling BusinessCodesApi->delete: #{e}"
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
> BusinessCode find(id)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::BusinessCodesApi.new

id = 'id_example' # String | 


begin
  result = api_instance.find(id)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling BusinessCodesApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BusinessCode**](BusinessCode.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;BusinessCode&gt; list(opts)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::BusinessCodesApi.new

opts = { 
  page: 1, # Integer | Page of results to fetch.
  per_page: 56, # Integer | Number of results to return per page.
  business_code_search_code_eq: 'business_code_search_code_eq_example', # String | code = ?
  business_code_search_name_eq: 'business_code_search_name_eq_example', # String | name = ?
  business_code_search_order_by: 'business_code_search_order_by_example', # String | Select which field you want to order the results by
  business_code_search_order: 'business_code_search_order_example' # String | Select whether the results should be sorted in ascending or descending order
}

begin
  result = api_instance.list(opts)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling BusinessCodesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page of results to fetch. | [optional] [default to 1]
 **per_page** | **Integer**| Number of results to return per page. | [optional] 
 **business_code_search_code_eq** | **String**| code &#x3D; ? | [optional] 
 **business_code_search_name_eq** | **String**| name &#x3D; ? | [optional] 
 **business_code_search_order_by** | **String**| Select which field you want to order the results by | [optional] 
 **business_code_search_order** | **String**| Select whether the results should be sorted in ascending or descending order | [optional] 

### Return type

[**Array&lt;BusinessCode&gt;**](BusinessCode.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> BusinessCode update(id, business_code_body)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::BusinessCodesApi.new

id = 'id_example' # String | 

business_code_body = Mooncard::PutApiV3BusinessCodes.new # PutApiV3BusinessCodes | 


begin
  result = api_instance.update(id, business_code_body)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling BusinessCodesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **business_code_body** | [**PutApiV3BusinessCodes**](PutApiV3BusinessCodes.md)|  | 

### Return type

[**BusinessCode**](BusinessCode.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



