# SwaggerClient::Expense

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**user_profile_id** | **String** |  | [optional] 
**business_code_id** | **String** |  | [optional] 
**supplier_id** | **String** |  | [optional] 
**rebill_id** | **String** |  | [optional] 
**department_id** | **String** |  | [optional] 
**expense_category_id** | **String** |  | [optional] 
**expense_report_id** | **String** |  | [optional] 
**receipt_id** | **String** |  | [optional] 
**analytic_code_ids** | [**Array&lt;null&gt;**](.md) |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**title** | **String** | A few words to describe the reason behind this expense or the type of good or service purchased | [optional] 
**amount** | **Float** | The paid amount in EUR - or the amount that would have been paid for a payment error | [optional] 
**amount_currency** | **Float** | The amount in the local currency (referenced in the currency field) | [optional] 
**currency** | **String** | ISO code alpha 3 for the local currency | [optional] 
**amount_fees** | **Float** | The fees paid for this expense (already included in the amount field) | [optional] 
**amount_fx_diff** | **Float** | The gain or loss of FX (already included in the amount field) | [optional] 
**at** | **DateTime** | The date and time of the expense | [optional] 
**billable** | **BOOLEAN** | Wether the expense is billable or not | [optional] 
**receipt_paper** | **BOOLEAN** | Wether the user should provide a paper receipt | [optional] 
**receipt_code** | **String** | Receipt code attributed to the expense that must be written down on the receipt | [optional] 
**editable** | **BOOLEAN** | Wether the expense can be edited by a user | [optional] 
**invoice_country** | **String** | ISO code alpha 3 for country selected for the VAT | [optional] 
**timezone** | **String** | Timezone used to display the date and time in local timezone (may be a little off for countries spaning multiple timezones) | [optional] 
**step** | **String** |  | [optional] 
**accountability** | **String** |  | [optional] 
**receipt_status** | **String** |  | [optional] 
**source_type** | **String** |  | [optional] 
**expense_type** | **String** |  | [optional] 
**source** | [**ExpenseSource**](ExpenseSource.md) |  | [optional] 


