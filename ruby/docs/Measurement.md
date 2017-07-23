# SwaggerClient::Measurement

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**variable_name** | **String** | Name of the variable for which we are creating the measurement records | 
**source_name** | **String** | Application or device used to record the measurement values | 
**start_time_string** | **String** | Start Time for the measurement event in UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot; | 
**start_time_epoch** | **Integer** | Seconds between the start of the event measured and 1970 (Unix timestamp) | [optional] 
**human_time** | [**HumanTime**](HumanTime.md) |  | [optional] 
**value** | **Float** | Converted measurement value in requested unit | 
**original_value** | **Integer** | Original value as originally submitted | [optional] 
**originalunit_abbreviated_name** | **String** | Original Unit of measurement as originally submitted | [optional] 
**unit_abbreviated_name** | **String** | Abbreviated name for the unit of measurement | 
**note** | **String** | Note of measurement | [optional] 


