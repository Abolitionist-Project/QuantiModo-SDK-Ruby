# SwaggerClient::Unit

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Unit name | 
**abbreviated_name** | **String** | Unit abbreviation | 
**category** | **String** | Unit category | 
**minimum_allowed_value** | **Float** | The minimum allowed value for measurements. While you can record a value below this minimum, it will be excluded from the correlation analysis. | [optional] 
**maximum_allowed_value** | **Float** | The maximum allowed value for measurements. While you can record a value above this maximum, it will be excluded from the correlation analysis. | [optional] 
**conversion_steps** | [**Array&lt;ConversionStep&gt;**](ConversionStep.md) | Conversion steps list | 


