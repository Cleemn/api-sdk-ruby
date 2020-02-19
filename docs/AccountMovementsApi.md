# Mooncard::AccountMovementsApi

All URIs are relative to *https://app.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find**](AccountMovementsApi.md#find) | **GET** /api/v3/account_movements/{id} | 
[**list**](AccountMovementsApi.md#list) | **GET** /api/v3/account_movements | 


# **find**
> find(id)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::AccountMovementsApi.new

id = 'id_example' # String | 


begin
  api_instance.find(id)
rescue Mooncard::ApiError => e
  puts "Exception when calling AccountMovementsApi->find: #{e}"
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



# **list**
> Array&lt;Movement&gt; list(account_id, opts)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::AccountMovementsApi.new

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
  result = api_instance.list(account_id, opts)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling AccountMovementsApi->list: #{e}"
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



