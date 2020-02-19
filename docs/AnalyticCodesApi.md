# Mooncard::AnalyticCodesApi

All URIs are relative to *https://app.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](AnalyticCodesApi.md#create) | **POST** /api/v3/analytic_codes | 
[**delete**](AnalyticCodesApi.md#delete) | **DELETE** /api/v3/analytic_codes/{id} | 
[**find**](AnalyticCodesApi.md#find) | **GET** /api/v3/analytic_codes/{id} | 
[**list**](AnalyticCodesApi.md#list) | **GET** /api/v3/analytic_codes | 
[**update**](AnalyticCodesApi.md#update) | **PUT** /api/v3/analytic_codes/{id} | 


# **create**
> create(analytic_code)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::AnalyticCodesApi.new

analytic_code = Mooncard::PostApiV3AnalyticCodes.new # PostApiV3AnalyticCodes | 


begin
  api_instance.create(analytic_code)
rescue Mooncard::ApiError => e
  puts "Exception when calling AnalyticCodesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analytic_code** | [**PostApiV3AnalyticCodes**](PostApiV3AnalyticCodes.md)|  | 

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

api_instance = Mooncard::AnalyticCodesApi.new

id = 'id_example' # String | 


begin
  api_instance.delete(id)
rescue Mooncard::ApiError => e
  puts "Exception when calling AnalyticCodesApi->delete: #{e}"
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
> AnalyticCode find(id)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::AnalyticCodesApi.new

id = 'id_example' # String | 


begin
  result = api_instance.find(id)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling AnalyticCodesApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**AnalyticCode**](AnalyticCode.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;AnalyticCode&gt; list(opts)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::AnalyticCodesApi.new

opts = { 
  page: 1, # Integer | Page of results to fetch.
  per_page: 56, # Integer | Number of results to return per page.
  analytic_code_search_code_eq: 'analytic_code_search_code_eq_example', # String | code = ?
  analytic_code_search_name_eq: 'analytic_code_search_name_eq_example', # String | name = ?
  analytic_code_search_order_by: 'analytic_code_search_order_by_example', # String | Select which field you want to order the results by
  analytic_code_search_order: 'analytic_code_search_order_example' # String | Select whether the results should be sorted in ascending or descending order
}

begin
  result = api_instance.list(opts)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling AnalyticCodesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page of results to fetch. | [optional] [default to 1]
 **per_page** | **Integer**| Number of results to return per page. | [optional] 
 **analytic_code_search_code_eq** | **String**| code &#x3D; ? | [optional] 
 **analytic_code_search_name_eq** | **String**| name &#x3D; ? | [optional] 
 **analytic_code_search_order_by** | **String**| Select which field you want to order the results by | [optional] 
 **analytic_code_search_order** | **String**| Select whether the results should be sorted in ascending or descending order | [optional] 

### Return type

[**Array&lt;AnalyticCode&gt;**](AnalyticCode.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> AnalyticCode update(id, analytic_codes_body)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::AnalyticCodesApi.new

id = 'id_example' # String | 

analytic_codes_body = Mooncard::PutApiV3AnalyticCodes.new # PutApiV3AnalyticCodes | 


begin
  result = api_instance.update(id, analytic_codes_body)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling AnalyticCodesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **analytic_codes_body** | [**PutApiV3AnalyticCodes**](PutApiV3AnalyticCodes.md)|  | 

### Return type

[**AnalyticCode**](AnalyticCode.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



