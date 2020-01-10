# SwaggerClient::AnalyticCodesApi

All URIs are relative to *https://sandbox.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_api_v3_analytic_codes_id**](AnalyticCodesApi.md#delete_api_v3_analytic_codes_id) | **DELETE** /api/v3/analytic_codes/{id} | 
[**get_api_v3_analytic_codes**](AnalyticCodesApi.md#get_api_v3_analytic_codes) | **GET** /api/v3/analytic_codes | 
[**get_api_v3_analytic_codes_id**](AnalyticCodesApi.md#get_api_v3_analytic_codes_id) | **GET** /api/v3/analytic_codes/{id} | 
[**post_api_v3_analytic_codes**](AnalyticCodesApi.md#post_api_v3_analytic_codes) | **POST** /api/v3/analytic_codes | 
[**put_api_v3_analytic_codes_id**](AnalyticCodesApi.md#put_api_v3_analytic_codes_id) | **PUT** /api/v3/analytic_codes/{id} | 


# **delete_api_v3_analytic_codes_id**
> delete_api_v3_analytic_codes_id(id)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AnalyticCodesApi.new

id = 'id_example' # String | 


begin
  api_instance.delete_api_v3_analytic_codes_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AnalyticCodesApi->delete_api_v3_analytic_codes_id: #{e}"
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



# **get_api_v3_analytic_codes**
> Array&lt;AnalyticCode&gt; get_api_v3_analytic_codes(opts)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AnalyticCodesApi.new

opts = { 
  page: 1, # Integer | Page of results to fetch.
  per_page: 56, # Integer | Number of results to return per page.
  analytic_code_search_code_eq: 'analytic_code_search_code_eq_example', # String | code = ?
  analytic_code_search_name_eq: 'analytic_code_search_name_eq_example', # String | name = ?
  analytic_code_search_order_by: 'analytic_code_search_order_by_example', # String | Select which field you want to order the results by
  analytic_code_search_order: 'analytic_code_search_order_example' # String | Select whether the results should be sorted in ascending or descending order
}

begin
  result = api_instance.get_api_v3_analytic_codes(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AnalyticCodesApi->get_api_v3_analytic_codes: #{e}"
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



# **get_api_v3_analytic_codes_id**
> AnalyticCode get_api_v3_analytic_codes_id(id)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AnalyticCodesApi.new

id = 'id_example' # String | 


begin
  result = api_instance.get_api_v3_analytic_codes_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AnalyticCodesApi->get_api_v3_analytic_codes_id: #{e}"
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



# **post_api_v3_analytic_codes**
> post_api_v3_analytic_codes(analytic_code)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AnalyticCodesApi.new

analytic_code = SwaggerClient::PostApiV3AnalyticCodes.new # PostApiV3AnalyticCodes | 


begin
  api_instance.post_api_v3_analytic_codes(analytic_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AnalyticCodesApi->post_api_v3_analytic_codes: #{e}"
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



# **put_api_v3_analytic_codes_id**
> AnalyticCode put_api_v3_analytic_codes_id(id, analytic_codes_body)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AnalyticCodesApi.new

id = 'id_example' # String | 

analytic_codes_body = SwaggerClient::PutApiV3AnalyticCodes.new # PutApiV3AnalyticCodes | 


begin
  result = api_instance.put_api_v3_analytic_codes_id(id, analytic_codes_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AnalyticCodesApi->put_api_v3_analytic_codes_id: #{e}"
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



