# SwaggerClient::UserProfile

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**firstname** | **String** |  | [optional] 
**lastname** | **String** |  | [optional] 
**address** | [**Address**](Address.md) | Require for card holders | [optional] 
**locale** | **String** | Choose language for app and messages, ISO code alpha 2 | [optional] 
**birthdate** | **Date** | Require for card holders | [optional] 
**phone** | **String** | Require for card holders, use for 3DS and 2 factor validation, format E.164 (internaional) | [optional] 
**position** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**confirmed_at** | **DateTime** |  | [optional] 
**archived_at** | **DateTime** |  | [optional] 
**active** | **BOOLEAN** | Allow access to the interface | [optional] 
**analytic_code** | **String** | Use for analytical accounting | [optional] 
**code** | **String** | Your unique code for the employee | [optional] 
**accounting_employee_account** | **String** | Employee account use for personal expense to refund or for an accountability in an expenses report journal / miscellaneous | [optional] 
**accounting_charge_account** | **String** | If you want to dedicate a charge account for each employee | [optional] 
**two_factor_active** | **BOOLEAN** | Is it activated for the employee (required for admins) | [optional] 
**role** | **String** |  | [optional] 
**expense_type** | **String** | Determine which journal to use when you have 2 journals (purchasing and Miscellaneous) | [optional] 
**status** | **String** |  | [optional] 
**preferences** | [**UserProfilePreferences**](UserProfilePreferences.md) |  | [optional] 


