# Mooncard::CardsApi

All URIs are relative to *https://app.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find**](CardsApi.md#find) | **GET** /api/v3/cards/{id} | 
[**list**](CardsApi.md#list) | **GET** /api/v3/cards | 
[**update**](CardsApi.md#update) | **PUT** /api/v3/cards/{id} | 


# **find**
> Card find(id)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::CardsApi.new

id = 'id_example' # String | 


begin
  result = api_instance.find(id)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling CardsApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Card**](Card.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;Card&gt; list(opts)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::CardsApi.new

opts = { 
  page: 1, # Integer | Page of results to fetch.
  per_page: 56, # Integer | Number of results to return per page.
  card_search_name_cont: 'card_search_name_cont_example', # String | name LIKE %?%
  card_search_token_eq: 'card_search_token_eq_example', # String | token = ?
  card_search_pattern_id_eq: 'card_search_pattern_id_eq_example', # String | pattern_id = ?
  card_search_user_profile_id_eq: 'card_search_user_profile_id_eq_example', # String | user_profile_id = ?
  card_search_status_eq: 'card_search_status_eq_example', # String | status = ?
  card_search_order_by: 'card_search_order_by_example', # String | Select which field you want to order the results by
  card_search_order: 'card_search_order_example' # String | Select whether the results should be sorted in ascending or descending order
}

begin
  result = api_instance.list(opts)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling CardsApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page of results to fetch. | [optional] [default to 1]
 **per_page** | **Integer**| Number of results to return per page. | [optional] 
 **card_search_name_cont** | **String**| name LIKE %?% | [optional] 
 **card_search_token_eq** | **String**| token &#x3D; ? | [optional] 
 **card_search_pattern_id_eq** | **String**| pattern_id &#x3D; ? | [optional] 
 **card_search_user_profile_id_eq** | **String**| user_profile_id &#x3D; ? | [optional] 
 **card_search_status_eq** | **String**| status &#x3D; ? | [optional] 
 **card_search_order_by** | **String**| Select which field you want to order the results by | [optional] 
 **card_search_order** | **String**| Select whether the results should be sorted in ascending or descending order | [optional] 

### Return type

[**Array&lt;Card&gt;**](Card.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> Card update(id, card)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::CardsApi.new

id = 'id_example' # String | 

card = Mooncard::PutApiV3Cards.new # PutApiV3Cards | 


begin
  result = api_instance.update(id, card)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling CardsApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **card** | [**PutApiV3Cards**](PutApiV3Cards.md)|  | 

### Return type

[**Card**](Card.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



