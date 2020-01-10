# SwaggerClient::BusinessCodesApi

All URIs are relative to *https://sandbox.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_api_v3_business_codes_id**](BusinessCodesApi.md#delete_api_v3_business_codes_id) | **DELETE** /api/v3/business_codes/{id} | 
[**get_api_v3_business_codes**](BusinessCodesApi.md#get_api_v3_business_codes) | **GET** /api/v3/business_codes | 
[**get_api_v3_business_codes_id**](BusinessCodesApi.md#get_api_v3_business_codes_id) | **GET** /api/v3/business_codes/{id} | 
[**post_api_v3_business_codes**](BusinessCodesApi.md#post_api_v3_business_codes) | **POST** /api/v3/business_codes | 
[**put_api_v3_business_codes_id**](BusinessCodesApi.md#put_api_v3_business_codes_id) | **PUT** /api/v3/business_codes/{id} | 


# **delete_api_v3_business_codes_id**
> delete_api_v3_business_codes_id(id)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BusinessCodesApi.new

id = 'id_example' # String | 


begin
  api_instance.delete_api_v3_business_codes_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BusinessCodesApi->delete_api_v3_business_codes_id: #{e}"
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



# **get_api_v3_business_codes**
> Array&lt;BusinessCode&gt; get_api_v3_business_codes(opts)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BusinessCodesApi.new

opts = { 
  page: 1, # Integer | Page of results to fetch.
  per_page: 56, # Integer | Number of results to return per page.
  business_code_search_code_eq: 'business_code_search_code_eq_example', # String | code = ?
  business_code_search_name_eq: 'business_code_search_name_eq_example', # String | name = ?
  business_code_search_order_by: 'business_code_search_order_by_example', # String | Select which field you want to order the results by
  business_code_search_order: 'business_code_search_order_example' # String | Select whether the results should be sorted in ascending or descending order
}

begin
  result = api_instance.get_api_v3_business_codes(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BusinessCodesApi->get_api_v3_business_codes: #{e}"
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



# **get_api_v3_business_codes_id**
> BusinessCode get_api_v3_business_codes_id(id)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BusinessCodesApi.new

id = 'id_example' # String | 


begin
  result = api_instance.get_api_v3_business_codes_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BusinessCodesApi->get_api_v3_business_codes_id: #{e}"
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



# **post_api_v3_business_codes**
> post_api_v3_business_codes(business_code)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BusinessCodesApi.new

business_code = SwaggerClient::PostApiV3BusinessCodes.new # PostApiV3BusinessCodes | 


begin
  api_instance.post_api_v3_business_codes(business_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BusinessCodesApi->post_api_v3_business_codes: #{e}"
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



# **put_api_v3_business_codes_id**
> BusinessCode put_api_v3_business_codes_id(id, business_code_body)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BusinessCodesApi.new

id = 'id_example' # String | 

business_code_body = SwaggerClient::PutApiV3BusinessCodes.new # PutApiV3BusinessCodes | 


begin
  result = api_instance.put_api_v3_business_codes_id(id, business_code_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BusinessCodesApi->put_api_v3_business_codes_id: #{e}"
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



