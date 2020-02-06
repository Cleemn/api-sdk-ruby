# SwaggerClient::UserProfilesApi

All URIs are relative to *https://sandbox.mooncard.co*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_api_v3_user_profiles_id**](UserProfilesApi.md#delete_api_v3_user_profiles_id) | **DELETE** /api/v3/user_profiles/{id} | 
[**get_api_v3_user_profiles**](UserProfilesApi.md#get_api_v3_user_profiles) | **GET** /api/v3/user_profiles | 
[**get_api_v3_user_profiles_id**](UserProfilesApi.md#get_api_v3_user_profiles_id) | **GET** /api/v3/user_profiles/{id} | 
[**post_api_v3_user_profiles**](UserProfilesApi.md#post_api_v3_user_profiles) | **POST** /api/v3/user_profiles | 
[**put_api_v3_user_profiles_id**](UserProfilesApi.md#put_api_v3_user_profiles_id) | **PUT** /api/v3/user_profiles/{id} | 


# **delete_api_v3_user_profiles_id**
> delete_api_v3_user_profiles_id(id)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UserProfilesApi.new

id = 'id_example' # String | 


begin
  api_instance.delete_api_v3_user_profiles_id(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserProfilesApi->delete_api_v3_user_profiles_id: #{e}"
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



# **get_api_v3_user_profiles**
> Array&lt;UserProfile&gt; get_api_v3_user_profiles(opts)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UserProfilesApi.new

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
  employee_search_order_by: 'employee_search_order_by_example', # String | Select which field you want to order the results by
  employee_search_order: 'employee_search_order_example' # String | Select whether the results should be sorted in ascending or descending order
}

begin
  result = api_instance.get_api_v3_user_profiles(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserProfilesApi->get_api_v3_user_profiles: #{e}"
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
 **employee_search_order_by** | **String**| Select which field you want to order the results by | [optional] 
 **employee_search_order** | **String**| Select whether the results should be sorted in ascending or descending order | [optional] 

### Return type

[**Array&lt;UserProfile&gt;**](UserProfile.md)

### Authorization

[oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_api_v3_user_profiles_id**
> UserProfile get_api_v3_user_profiles_id(id)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UserProfilesApi.new

id = 'id_example' # String | 


begin
  result = api_instance.get_api_v3_user_profiles_id(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserProfilesApi->get_api_v3_user_profiles_id: #{e}"
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



# **post_api_v3_user_profiles**
> post_api_v3_user_profiles(user_profile)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UserProfilesApi.new

user_profile = SwaggerClient::PostApiV3UserProfiles.new # PostApiV3UserProfiles | 


begin
  api_instance.post_api_v3_user_profiles(user_profile)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserProfilesApi->post_api_v3_user_profiles: #{e}"
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



# **put_api_v3_user_profiles_id**
> UserProfile put_api_v3_user_profiles_id(id, user_profile_body)



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UserProfilesApi.new

id = 'id_example' # String | 

user_profile_body = SwaggerClient::PutApiV3UserProfiles.new # PutApiV3UserProfiles | 


begin
  result = api_instance.put_api_v3_user_profiles_id(id, user_profile_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserProfilesApi->put_api_v3_user_profiles_id: #{e}"
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



