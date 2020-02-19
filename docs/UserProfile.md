# Mooncard::UserProfile

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**firstname** | **String** |  | [optional] 
**lastname** | **String** |  | [optional] 
**address** | [**Address**](Address.md) | Required for cardholders. The JSON must contain &#x60;street&#x60;, &#x60;postcode&#x60;, &#x60;city&#x60;, &#x60;country&#x60;. | [optional] 
**locale** | **String** | Choose language for app and messages, ISO code alpha 2 | [optional] 
**birthdate** | **Date** | Require for card holders | [optional] 
**phone** | **String** | Require for card holders, use for 3DS and 2 factor validation, format E.164 (international) | [optional] 
**position** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**confirmed_at** | **DateTime** |  | [optional] 
**archived_at** | **DateTime** |  | [optional] 
**direct_manager_ids** | [**Array&lt;null&gt;**](.md) | Array of user_profile_id | [optional] 
**active** | **BOOLEAN** | Allow access to the interface | [optional] 
**analytic_code** | **String** | Use for analytical accounting | [optional] 
**code** | **String** | Your unique code for the employee | [optional] 
**accounting_employee_account** | **String** | Employee account use for personal expense to refund or for an accountability in an expenses report journal / miscellaneous | [optional] 
**accounting_charge_account** | **String** | If you want to dedicate a charge account for each employee | [optional] 
**two_factor_active** | **BOOLEAN** | Is it activated for the employee (required for admins) | [optional] 
**role** | **String** |  | [optional] 
**expense_type** | **String** | Determine which journal to use when you have 2 journals (purchasing and Miscellaneous) | [optional] 
**status** | **String** |  | [optional] 
**auto_check_rebilling** | **BOOLEAN** |  | [optional] 
**use_km_expenses** | **BOOLEAN** |  | [optional] 
**use_manual_expenses** | **BOOLEAN** |  | [optional] 


