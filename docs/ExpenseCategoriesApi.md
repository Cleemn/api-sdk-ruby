# Mooncard::ExpenseCategoriesApi

All URIs are relative to *https://app.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ExpenseCategoriesApi.md#create) | **POST** /api/v3/expense_categories | 
[**delete**](ExpenseCategoriesApi.md#delete) | **DELETE** /api/v3/expense_categories/{id} | 
[**find**](ExpenseCategoriesApi.md#find) | **GET** /api/v3/expense_categories/{id} | 
[**list**](ExpenseCategoriesApi.md#list) | **GET** /api/v3/expense_categories | 
[**update**](ExpenseCategoriesApi.md#update) | **PUT** /api/v3/expense_categories/{id} | 


# **create**
> create(expense_category)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::ExpenseCategoriesApi.new

expense_category = Mooncard::PostApiV3ExpenseCategories.new # PostApiV3ExpenseCategories | 


begin
  api_instance.create(expense_category)
rescue Mooncard::ApiError => e
  puts "Exception when calling ExpenseCategoriesApi->create: #{e}"
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

api_instance = Mooncard::ExpenseCategoriesApi.new

id = 'id_example' # String | 


begin
  api_instance.delete(id)
rescue Mooncard::ApiError => e
  puts "Exception when calling ExpenseCategoriesApi->delete: #{e}"
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
> ExpenseCategory find(id)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::ExpenseCategoriesApi.new

id = 'id_example' # String | 


begin
  result = api_instance.find(id)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling ExpenseCategoriesApi->find: #{e}"
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



# **list**
> Array&lt;ExpenseCategory&gt; list(opts)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::ExpenseCategoriesApi.new

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
  result = api_instance.list(opts)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling ExpenseCategoriesApi->list: #{e}"
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



# **update**
> ExpenseCategory update(id, expense_category_body)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::ExpenseCategoriesApi.new

id = 'id_example' # String | 

expense_category_body = Mooncard::PutApiV3ExpenseCategories.new # PutApiV3ExpenseCategories | 


begin
  result = api_instance.update(id, expense_category_body)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling ExpenseCategoriesApi->update: #{e}"
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



