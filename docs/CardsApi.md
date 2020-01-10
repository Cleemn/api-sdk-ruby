# SwaggerClient::CardsApi

All URIs are relative to *https://sandbox.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_api_v3_cards**](CardsApi.md#get_api_v3_cards) | **GET** /api/v3/cards | 
[**get_api_v3_cards_id**](CardsApi.md#get_api_v3_cards_id) | **GET** /api/v3/cards/{id} | 
[**put_api_v3_cards_id**](CardsApi.md#put_api_v3_cards_id) | **PUT** /api/v3/cards/{id} | 


# **get_api_v3_cards**
> Array&lt;Card&gt; get_api_v3_cards(opts)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CardsApi.new

opts = { 
  page: 1, # Integer | Page of results to fetch.
  per_page: 56, # Integer | Number of results to return per page.
  card_search_name_cont: 'card_search_name_cont_example', # String | name LIKE %?%
  card_search_pattern_id_eq: 'card_search_pattern_id_eq_example', # String | pattern_id = ?
  card_search_user_profile_id_eq: 'card_search_user_profile_id_eq_example', # String | user_profile_id = ?
  card_search_status_eq: 'card_search_status_eq_example', # String | status = ?
  card_search_order_by: 'card_search_order_by_example', # String | Select which field you want to order the results by
  card_search_order: 'card_search_order_example' # String | Select whether the results should be sorted in ascending or descending order
}

begin
  result = api_instance.get_api_v3_cards(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CardsApi->get_api_v3_cards: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page of results to fetch. | [optional] [default to 1]
 **per_page** | **Integer**| Number of results to return per page. | [optional] 
 **card_search_name_cont** | **String**| name LIKE %?% | [optional] 
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



# **get_api_v3_cards_id**
> Card get_api_v3_cards_id(id)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CardsApi.new

id = 'id_example' # String | 


begin
  result = api_instance.get_api_v3_cards_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CardsApi->get_api_v3_cards_id: #{e}"
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



# **put_api_v3_cards_id**
> Card put_api_v3_cards_id(id, card)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CardsApi.new

id = 'id_example' # String | 

card = SwaggerClient::PutApiV3Cards.new # PutApiV3Cards | 


begin
  result = api_instance.put_api_v3_cards_id(id, card)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CardsApi->put_api_v3_cards_id: #{e}"
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



