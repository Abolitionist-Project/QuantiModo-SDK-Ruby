# SwaggerClient::Measurement

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**variable** | **String** | ORIGINAL Name of the variable for which we are creating the measurement records | 
**source** | **String** | Application or device used to record the measurement values | 
**start_time** | **String** | Start Time for the measurement event in ISO 8601 | 
**human_time** | [**HumanTime**](HumanTime.md) | Start Time for the measurement event in ISO 8601 | [optional] 
**value** | **Float** | Converted measurement value in requested unit | 
**unit** | **String** | Unit of measurement as requested in GET request | 
**original_value** | **Integer** | Original value | [optional] 
**stored_value** | **Float** | Measurement value in the unit as orignally submitted | [optional] 
**stored_abbreviated_unit_name** | **String** | Unit of measurement as originally submitted | [optional] 
**original_abbreviated_unit_name** | **String** | Original Unit of measurement as originally submitted | [optional] 
**abbreviated_unit_name** | **String** | Unit of measurement as originally submitted | [optional] 
**note** | **String** | Note of measurement | [optional] 


