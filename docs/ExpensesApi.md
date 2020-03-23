# Mooncard::ExpensesApi

All URIs are relative to *https://app.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find**](ExpensesApi.md#find) | **GET** /api/v3/expenses/{id} | 
[**list**](ExpensesApi.md#list) | **GET** /api/v3/expenses | 


# **find**
> Expense find(id)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::ExpensesApi.new

id = 'id_example' # String | 


begin
  result = api_instance.find(id)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling ExpensesApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Expense**](Expense.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;Expense&gt; list(opts)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::ExpensesApi.new

opts = { 
  page: 1, # Integer | Page of results to fetch.
  per_page: 56, # Integer | Number of results to return per page.
  expense_search_user_profile_id_eq: 'expense_search_user_profile_id_eq_example', # String | user_profile_id = ?
  expense_search_business_code_id_eq: 'expense_search_business_code_id_eq_example', # String | business_code_id = ?
  expense_search_supplier_id_eq: 'expense_search_supplier_id_eq_example', # String | supplier_id = ?
  expense_search_rebill_id_eq: 'expense_search_rebill_id_eq_example', # String | rebill_id = ?
  expense_search_department_id_eq: 'expense_search_department_id_eq_example', # String | department_id = ?
  expense_search_expense_category_id_eq: 'expense_search_expense_category_id_eq_example', # String | expense_category_id = ?
  expense_search_expense_report_id_eq: 'expense_search_expense_report_id_eq_example', # String | expense_report_id = ?
  expense_search_title_cont: 'expense_search_title_cont_example', # String | title LIKE %?%
  expense_search_currency_in: 'expense_search_currency_in_example', # String | currency IN (?)
  expense_search_source_type_eq: 'expense_search_source_type_eq_example', # String | source_type = IN (?)
  expense_search_accountability_in: 'expense_search_accountability_in_example', # String | accountability = IN (?)
  expense_search_receipt_status_in: 'expense_search_receipt_status_in_example', # String | receipt_status = IN (?)
  expense_search_step_in: 'expense_search_step_in_example', # String | step = IN (?)
  expense_search_at_gteq: 'expense_search_at_gteq_example', # String | at >= ?
  expense_search_at_lteq: 'expense_search_at_lteq_example', # String | at <= ?
  expense_search_order_by: 'expense_search_order_by_example', # String | Select which field you want to order the results by
  expense_search_order: 'expense_search_order_example' # String | Select whether the results should be sorted in ascending or descending order
}

begin
  result = api_instance.list(opts)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling ExpensesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page of results to fetch. | [optional] [default to 1]
 **per_page** | **Integer**| Number of results to return per page. | [optional] 
 **expense_search_user_profile_id_eq** | **String**| user_profile_id &#x3D; ? | [optional] 
 **expense_search_business_code_id_eq** | **String**| business_code_id &#x3D; ? | [optional] 
 **expense_search_supplier_id_eq** | **String**| supplier_id &#x3D; ? | [optional] 
 **expense_search_rebill_id_eq** | **String**| rebill_id &#x3D; ? | [optional] 
 **expense_search_department_id_eq** | **String**| department_id &#x3D; ? | [optional] 
 **expense_search_expense_category_id_eq** | **String**| expense_category_id &#x3D; ? | [optional] 
 **expense_search_expense_report_id_eq** | **String**| expense_report_id &#x3D; ? | [optional] 
 **expense_search_title_cont** | **String**| title LIKE %?% | [optional] 
 **expense_search_currency_in** | **String**| currency IN (?) | [optional] 
 **expense_search_source_type_eq** | **String**| source_type &#x3D; IN (?) | [optional] 
 **expense_search_accountability_in** | **String**| accountability &#x3D; IN (?) | [optional] 
 **expense_search_receipt_status_in** | **String**| receipt_status &#x3D; IN (?) | [optional] 
 **expense_search_step_in** | **String**| step &#x3D; IN (?) | [optional] 
 **expense_search_at_gteq** | **String**| at &gt;&#x3D; ? | [optional] 
 **expense_search_at_lteq** | **String**| at &lt;&#x3D; ? | [optional] 
 **expense_search_order_by** | **String**| Select which field you want to order the results by | [optional] 
 **expense_search_order** | **String**| Select whether the results should be sorted in ascending or descending order | [optional] 

### Return type

[**Array&lt;Expense&gt;**](Expense.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



