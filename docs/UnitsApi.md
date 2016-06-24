# SwaggerClient::UnitsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_unit_categories_get**](UnitsApi.md#v1_unit_categories_get) | **GET** /v1/unitCategories | Get unit categories
[**v1_units_get**](UnitsApi.md#v1_units_get) | **GET** /v1/units | Get all available units
[**v1_units_variable_get**](UnitsApi.md#v1_units_variable_get) | **GET** /v1/unitsVariable | Units for Variable


# **v1_unit_categories_get**
> UnitCategory v1_unit_categories_get

Get unit categories

Get a list of the categories of measurement units such as 'Distance', 'Duration', 'Energy', 'Frequency', 'Miscellany', 'Pressure', 'Proportion', 'Rating', 'Temperature', 'Volume', and 'Weight'.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UnitsApi.new

begin
  #Get unit categories
  result = api_instance.v1_unit_categories_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UnitsApi->v1_unit_categories_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UnitCategory**](UnitCategory.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_units_get**
> Array&lt;Unit&gt; v1_units_get(opts)

Get all available units

Get all available units

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UnitsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  id: 56, # Integer | Unit id
  unit_name: "unit_name_example", # String | Unit name
  abbreviated_unit_name: "abbreviated_unit_name_example", # String | Restrict the results to a specific unit by providing the unit abbreviation.
  category_name: "category_name_example" # String | Restrict the results to a specific unit category by providing the unit category name.
}

begin
  #Get all available units
  result = api_instance.v1_units_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UnitsApi->v1_units_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **id** | **Integer**| Unit id | [optional] 
 **unit_name** | **String**| Unit name | [optional] 
 **abbreviated_unit_name** | **String**| Restrict the results to a specific unit by providing the unit abbreviation. | [optional] 
 **category_name** | **String**| Restrict the results to a specific unit category by providing the unit category name. | [optional] 

### Return type

[**Array&lt;Unit&gt;**](Unit.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_units_variable_get**
> Array&lt;Unit&gt; v1_units_variable_get(opts)

Units for Variable

Get a list of all possible units to use for a given variable

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UnitsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  unit_name: "unit_name_example", # String | Name of Unit you want to retrieve
  abbreviated_unit_name: "abbreviated_unit_name_example", # String | Abbreviated Unit Name of the unit you want
  category_name: "category_name_example", # String | Name of the category you want units for
  variable: "variable_example" # String | Name of the variable you want units for
}

begin
  #Units for Variable
  result = api_instance.v1_units_variable_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UnitsApi->v1_units_variable_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **unit_name** | **String**| Name of Unit you want to retrieve | [optional] 
 **abbreviated_unit_name** | **String**| Abbreviated Unit Name of the unit you want | [optional] 
 **category_name** | **String**| Name of the category you want units for | [optional] 
 **variable** | **String**| Name of the variable you want units for | [optional] 

### Return type

[**Array&lt;Unit&gt;**](Unit.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



