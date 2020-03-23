# Mooncard::UserProfilesApi

All URIs are relative to *https://app.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](UserProfilesApi.md#create) | **POST** /api/v3/user_profiles | 
[**delete**](UserProfilesApi.md#delete) | **DELETE** /api/v3/user_profiles/{id} | 
[**find**](UserProfilesApi.md#find) | **GET** /api/v3/user_profiles/{id} | 
[**list**](UserProfilesApi.md#list) | **GET** /api/v3/user_profiles | 
[**update**](UserProfilesApi.md#update) | **PUT** /api/v3/user_profiles/{id} | 


# **create**
> create(user_profile)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::UserProfilesApi.new

user_profile = Mooncard::PostApiV3UserProfiles.new # PostApiV3UserProfiles | 


begin
  api_instance.create(user_profile)
rescue Mooncard::ApiError => e
  puts "Exception when calling UserProfilesApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_profile** | [**PostApiV3UserProfiles**](PostApiV3UserProfiles.md)|  | 

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

api_instance = Mooncard::UserProfilesApi.new

id = 'id_example' # String | 


begin
  api_instance.delete(id)
rescue Mooncard::ApiError => e
  puts "Exception when calling UserProfilesApi->delete: #{e}"
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
> UserProfile find(id)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::UserProfilesApi.new

id = 'id_example' # String | 


begin
  result = api_instance.find(id)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling UserProfilesApi->find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**UserProfile**](UserProfile.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list**
> Array&lt;UserProfile&gt; list(opts)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::UserProfilesApi.new

opts = { 
  page: 1, # Integer | Page of results to fetch.
  per_page: 56, # Integer | Number of results to return per page.
  employee_search_id_in: ['employee_search_id_in_example'], # Array<String> | id = IN (?)
  employee_search_email_cont: 'employee_search_email_cont_example', # String | email = %?%
  employee_search_name_cont: 'employee_search_name_cont_example', # String | firstname = %?% OR lastname = %?%
  employee_search_status_in: ['employee_search_status_in_example'], # Array<String> | status = IN (?)
  employee_search_accounting_charge_account_eq: 'employee_search_accounting_charge_account_eq_example', # String | accounting_charge_account = ?
  employee_search_accounting_employee_account_eq: 'employee_search_accounting_employee_account_eq_example', # String | accounting_employee_account = ?
  employee_search_active_eq: 'employee_search_active_eq_example', # String | active = ?
  employee_search_analytic_code_eq: 'employee_search_analytic_code_eq_example', # String | analytic_code = ?
  employee_search_code_eq: 'employee_search_code_eq_example', # String | code = ?
  employee_search_expense_type_eq: 'employee_search_expense_type_eq_example', # String | expense_type = ?
  employee_search_role_in: ['employee_search_role_in_example'], # Array<String> | role = IN (?)
  employee_search_position_in: ['employee_search_position_in_example'], # Array<String> | position = IN (?)
  employee_search_order_by: 'employee_search_order_by_example', # String | Select which field you want to order the results by
  employee_search_order: 'employee_search_order_example' # String | Select whether the results should be sorted in ascending or descending order
}

begin
  result = api_instance.list(opts)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling UserProfilesApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page of results to fetch. | [optional] [default to 1]
 **per_page** | **Integer**| Number of results to return per page. | [optional] 
 **employee_search_id_in** | [**Array&lt;String&gt;**](String.md)| id &#x3D; IN (?) | [optional] 
 **employee_search_email_cont** | **String**| email &#x3D; %?% | [optional] 
 **employee_search_name_cont** | **String**| firstname &#x3D; %?% OR lastname &#x3D; %?% | [optional] 
 **employee_search_status_in** | [**Array&lt;String&gt;**](String.md)| status &#x3D; IN (?) | [optional] 
 **employee_search_accounting_charge_account_eq** | **String**| accounting_charge_account &#x3D; ? | [optional] 
 **employee_search_accounting_employee_account_eq** | **String**| accounting_employee_account &#x3D; ? | [optional] 
 **employee_search_active_eq** | **String**| active &#x3D; ? | [optional] 
 **employee_search_analytic_code_eq** | **String**| analytic_code &#x3D; ? | [optional] 
 **employee_search_code_eq** | **String**| code &#x3D; ? | [optional] 
 **employee_search_expense_type_eq** | **String**| expense_type &#x3D; ? | [optional] 
 **employee_search_role_in** | [**Array&lt;String&gt;**](String.md)| role &#x3D; IN (?) | [optional] 
 **employee_search_position_in** | [**Array&lt;String&gt;**](String.md)| position &#x3D; IN (?) | [optional] 
 **employee_search_order_by** | **String**| Select which field you want to order the results by | [optional] 
 **employee_search_order** | **String**| Select whether the results should be sorted in ascending or descending order | [optional] 

### Return type

[**Array&lt;UserProfile&gt;**](UserProfile.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update**
> UserProfile update(id, user_profile_body)



### Example
```ruby
# load the gem
require 'mooncard-sdk'
# setup authorization
Mooncard.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Mooncard::UserProfilesApi.new

id = 'id_example' # String | 

user_profile_body = Mooncard::PutApiV3UserProfiles.new # PutApiV3UserProfiles | 


begin
  result = api_instance.update(id, user_profile_body)
  p result
rescue Mooncard::ApiError => e
  puts "Exception when calling UserProfilesApi->update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **user_profile_body** | [**PutApiV3UserProfiles**](PutApiV3UserProfiles.md)|  | 

### Return type

[**UserProfile**](UserProfile.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



