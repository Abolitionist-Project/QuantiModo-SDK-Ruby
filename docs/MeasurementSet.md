# SwaggerClient::MeasurementSet

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**measurements** | [**Array&lt;ValueObject&gt;**](ValueObject.md) | Array of timestamps, values, and optional notes | 
**variable_name** | **String** | ORIGINAL name of the variable for which we are creating the measurement records | 
**source_name** | **String** | Name of the application or device used to record the measurement values | 
**variable_category_name** | **String** | Variable category name | [optional] 
**combination_operation** | **String** | Way to aggregate measurements over time. Options are \&quot;MEAN\&quot; or \&quot;SUM\&quot;.  SUM should be used for things like minutes of exercise.  If you use MEAN for exercise, then a person might exercise more minutes in one day but add separate measurements that were smaller.  So when we are doing correlational analysis, we would think that the person exercised less that day even though they exercised more.  Conversely, we must use MEAN for things such as ratings which cannot be SUMMED. | [optional] 
**abbreviated_unit_name** | **String** | Unit of measurement | 


