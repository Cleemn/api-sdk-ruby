# SwaggerClient::AccountMovementsApi

All URIs are relative to *https://sandbox.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_api_v3_account_movements**](AccountMovementsApi.md#get_api_v3_account_movements) | **GET** /api/v3/account_movements | 
[**get_api_v3_account_movements_id**](AccountMovementsApi.md#get_api_v3_account_movements_id) | **GET** /api/v3/account_movements/{id} | 


# **get_api_v3_account_movements**
> Array&lt;Movement&gt; get_api_v3_account_movements(account_id, opts)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AccountMovementsApi.new

account_id = 'account_id_example' # String | account_id is required

opts = { 
  account_movement_search_change_real_gteq: 'account_movement_search_change_real_gteq_example', # String | change_real >= ?
  account_movement_search_change_real_lteq: 'account_movement_search_change_real_lteq_example', # String | change_real <= ?
  account_movement_search_change_available_gteq: 'account_movement_search_change_available_gteq_example', # String | change_available >= ?
  account_movement_search_change_available_lteq: 'account_movement_search_change_available_lteq_example', # String | change_available <= ?
  account_movement_search_description_cont: 'account_movement_search_description_cont_example', # String | description = %?%
  account_movement_search_transaction_date_gteq: 'account_movement_search_transaction_date_gteq_example', # String | transaction_date >= ?
  account_movement_search_transaction_date_lteq: 'account_movement_search_transaction_date_lteq_example', # String | transaction_date <= ?
  account_movement_search_transaction_status_in: 'account_movement_search_transaction_status_in_example', # String | transaction_status IN (?)
  account_movement_search_transaction_type_in: 'account_movement_search_transaction_type_in_example', # String | transaction_type IN (?)
  account_movement_search_token_in: 'account_movement_search_token_in_example', # String | token IN (?)
  account_movement_search_order_by: 'transaction_date', # String | Select which field you want to order the results by
  account_movement_search_order: 'desc', # String | Select whether the results should be sorted in ascending or descending order
  page: 1, # Integer | Page of results to fetch.
  per_page: 56 # Integer | Number of results to return per page.
}

begin
  result = api_instance.get_api_v3_account_movements(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountMovementsApi->get_api_v3_account_movements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| account_id is required | 
 **account_movement_search_change_real_gteq** | **String**| change_real &gt;&#x3D; ? | [optional] 
 **account_movement_search_change_real_lteq** | **String**| change_real &lt;&#x3D; ? | [optional] 
 **account_movement_search_change_available_gteq** | **String**| change_available &gt;&#x3D; ? | [optional] 
 **account_movement_search_change_available_lteq** | **String**| change_available &lt;&#x3D; ? | [optional] 
 **account_movement_search_description_cont** | **String**| description &#x3D; %?% | [optional] 
 **account_movement_search_transaction_date_gteq** | **String**| transaction_date &gt;&#x3D; ? | [optional] 
 **account_movement_search_transaction_date_lteq** | **String**| transaction_date &lt;&#x3D; ? | [optional] 
 **account_movement_search_transaction_status_in** | **String**| transaction_status IN (?) | [optional] 
 **account_movement_search_transaction_type_in** | **String**| transaction_type IN (?) | [optional] 
 **account_movement_search_token_in** | **String**| token IN (?) | [optional] 
 **account_movement_search_order_by** | **String**| Select which field you want to order the results by | [optional] [default to transaction_date]
 **account_movement_search_order** | **String**| Select whether the results should be sorted in ascending or descending order | [optional] [default to desc]
 **page** | **Integer**| Page of results to fetch. | [optional] [default to 1]
 **per_page** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**Array&lt;Movement&gt;**](Movement.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_api_v3_account_movements_id**
> get_api_v3_account_movements_id(id)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AccountMovementsApi.new

id = 'id_example' # String | 


begin
  api_instance.get_api_v3_account_movements_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountMovementsApi->get_api_v3_account_movements_id: #{e}"
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



