# SwaggerClient::ExpenseCategoriesApi

All URIs are relative to *https://sandbox.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_api_v3_expense_categories_id**](ExpenseCategoriesApi.md#delete_api_v3_expense_categories_id) | **DELETE** /api/v3/expense_categories/{id} | 
[**get_api_v3_expense_categories**](ExpenseCategoriesApi.md#get_api_v3_expense_categories) | **GET** /api/v3/expense_categories | 
[**get_api_v3_expense_categories_id**](ExpenseCategoriesApi.md#get_api_v3_expense_categories_id) | **GET** /api/v3/expense_categories/{id} | 
[**post_api_v3_expense_categories**](ExpenseCategoriesApi.md#post_api_v3_expense_categories) | **POST** /api/v3/expense_categories | 
[**put_api_v3_expense_categories_id**](ExpenseCategoriesApi.md#put_api_v3_expense_categories_id) | **PUT** /api/v3/expense_categories/{id} | 


# **delete_api_v3_expense_categories_id**
> delete_api_v3_expense_categories_id(id)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ExpenseCategoriesApi.new

id = 'id_example' # String | 


begin
  api_instance.delete_api_v3_expense_categories_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExpenseCategoriesApi->delete_api_v3_expense_categories_id: #{e}"
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



# **get_api_v3_expense_categories**
> Array&lt;ExpenseCategory&gt; get_api_v3_expense_categories(opts)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ExpenseCategoriesApi.new

opts = { 
  page: 1, # Integer | Page of results to fetch.
  per_page: 56, # Integer | Number of results to return per page.
  expense_category_search_name_cont: 'expense_category_search_name_cont_example', # String | name LIKE %?%
  expense_category_search_expense_category_template_equals: 'expense_category_search_expense_category_template_equals_example', # String | expense_category_template = ?
  expense_category_search_charge_account_equals: 'expense_category_search_charge_account_equals_example', # String | charge_account = ?
  expense_category_search_order_by: 'expense_category_search_order_by_example', # String | Select which field you want to order the results by
  expense_category_search_order: 'expense_category_search_order_example' # String | Select whether the results should be sorted in ascending or descending order
}

begin
  result = api_instance.get_api_v3_expense_categories(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExpenseCategoriesApi->get_api_v3_expense_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page of results to fetch. | [optional] [default to 1]
 **per_page** | **Integer**| Number of results to return per page. | [optional] 
 **expense_category_search_name_cont** | **String**| name LIKE %?% | [optional] 
 **expense_category_search_expense_category_template_equals** | **String**| expense_category_template &#x3D; ? | [optional] 
 **expense_category_search_charge_account_equals** | **String**| charge_account &#x3D; ? | [optional] 
 **expense_category_search_order_by** | **String**| Select which field you want to order the results by | [optional] 
 **expense_category_search_order** | **String**| Select whether the results should be sorted in ascending or descending order | [optional] 

### Return type

[**Array&lt;ExpenseCategory&gt;**](ExpenseCategory.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_api_v3_expense_categories_id**
> ExpenseCategory get_api_v3_expense_categories_id(id)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ExpenseCategoriesApi.new

id = 'id_example' # String | 


begin
  result = api_instance.get_api_v3_expense_categories_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExpenseCategoriesApi->get_api_v3_expense_categories_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ExpenseCategory**](ExpenseCategory.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_api_v3_expense_categories**
> post_api_v3_expense_categories(expense_category)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ExpenseCategoriesApi.new

expense_category = SwaggerClient::PostApiV3ExpenseCategories.new # PostApiV3ExpenseCategories | 


begin
  api_instance.post_api_v3_expense_categories(expense_category)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExpenseCategoriesApi->post_api_v3_expense_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expense_category** | [**PostApiV3ExpenseCategories**](PostApiV3ExpenseCategories.md)|  | 

### Return type

nil (empty response body)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_api_v3_expense_categories_id**
> ExpenseCategory put_api_v3_expense_categories_id(id, expense_category_body)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ExpenseCategoriesApi.new

id = 'id_example' # String | 

expense_category_body = SwaggerClient::PutApiV3ExpenseCategories.new # PutApiV3ExpenseCategories | 


begin
  result = api_instance.put_api_v3_expense_categories_id(id, expense_category_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExpenseCategoriesApi->put_api_v3_expense_categories_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **expense_category_body** | [**PutApiV3ExpenseCategories**](PutApiV3ExpenseCategories.md)|  | 

### Return type

[**ExpenseCategory**](ExpenseCategory.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



