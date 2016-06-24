# SwaggerClient::MeasurementsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_measurement_sources_get**](MeasurementsApi.md#v1_measurement_sources_get) | **GET** /v1/measurementSources | Get measurement sources
[**v1_measurement_sources_post**](MeasurementsApi.md#v1_measurement_sources_post) | **POST** /v1/measurementSources | Add a data source
[**v1_measurements_daily_get**](MeasurementsApi.md#v1_measurements_daily_get) | **GET** /v1/measurements/daily | Get daily measurements for this user
[**v1_measurements_delete_post**](MeasurementsApi.md#v1_measurements_delete_post) | **POST** /v1/measurements/delete | Delete a measurement
[**v1_measurements_get**](MeasurementsApi.md#v1_measurements_get) | **GET** /v1/measurements | Get measurements for this user
[**v1_measurements_post**](MeasurementsApi.md#v1_measurements_post) | **POST** /v1/measurements | Post a new set or update existing measurements to the database
[**v1_measurements_range_get**](MeasurementsApi.md#v1_measurements_range_get) | **GET** /v1/measurementsRange | Get measurements range for this user
[**v2_measurements_csv_get**](MeasurementsApi.md#v2_measurements_csv_get) | **GET** /v2/measurements/csv | Get Measurements CSV
[**v2_measurements_id_delete**](MeasurementsApi.md#v2_measurements_id_delete) | **DELETE** /v2/measurements/{id} | Delete Measurement
[**v2_measurements_id_get**](MeasurementsApi.md#v2_measurements_id_get) | **GET** /v2/measurements/{id} | Get Measurement
[**v2_measurements_id_put**](MeasurementsApi.md#v2_measurements_id_put) | **PUT** /v2/measurements/{id} | Update Measurement
[**v2_measurements_request_csv_post**](MeasurementsApi.md#v2_measurements_request_csv_post) | **POST** /v2/measurements/request_csv | Post Request for Measurements CSV
[**v2_measurements_request_pdf_post**](MeasurementsApi.md#v2_measurements_request_pdf_post) | **POST** /v2/measurements/request_pdf | Post Request for Measurements PDF
[**v2_measurements_request_xls_post**](MeasurementsApi.md#v2_measurements_request_xls_post) | **POST** /v2/measurements/request_xls | Post Request for Measurements XLS


# **v1_measurement_sources_get**
> MeasurementSource v1_measurement_sources_get

Get measurement sources

Returns a list of all the apps from which measurement data is obtained.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

begin
  #Get measurement sources
  result = api_instance.v1_measurement_sources_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v1_measurement_sources_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MeasurementSource**](MeasurementSource.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_measurement_sources_post**
> v1_measurement_sources_post(body, opts)

Add a data source

Add a life-tracking app or device to the QuantiModo list of data sources.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

body = SwaggerClient::MeasurementSource.new # MeasurementSource | An array of names of data sources you want to add.

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Add a data source
  api_instance.v1_measurement_sources_post(body, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v1_measurement_sources_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MeasurementSource**](MeasurementSource.md)| An array of names of data sources you want to add. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_measurements_daily_get**
> Measurement v1_measurements_daily_get(variable_name, opts)

Get daily measurements for this user

Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. <br>Supported filter parameters:<br><ul><li><b>value</b> - Value of measurement</li><li><b>lastUpdated</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul><br>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

variable_name = "variable_name_example" # String | Name of the variable you want measurements for

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  abbreviated_unit_name: "abbreviated_unit_name_example", # String | The unit your want the measurements in
  start_time: "start_time_example", # String | The lower limit of measurements returned (Iso8601)
  end_time: "end_time_example", # String | The upper limit of measurements returned (Iso8601)
  grouping_width: 56, # Integer | The time (in seconds) over which measurements are grouped together
  grouping_timezone: "grouping_timezone_example", # String | The time (in seconds) over which measurements are grouped together
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
  offset: 56, # Integer | Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
  sort: 56 # Integer | Sort by given field. If the field is prefixed with `-, it will sort in descending order.
}

begin
  #Get daily measurements for this user
  result = api_instance.v1_measurements_daily_get(variable_name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v1_measurements_daily_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variable_name** | **String**| Name of the variable you want measurements for | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **abbreviated_unit_name** | **String**| The unit your want the measurements in | [optional] 
 **start_time** | **String**| The lower limit of measurements returned (Iso8601) | [optional] 
 **end_time** | **String**| The upper limit of measurements returned (Iso8601) | [optional] 
 **grouping_width** | **Integer**| The time (in seconds) over which measurements are grouped together | [optional] 
 **grouping_timezone** | **String**| The time (in seconds) over which measurements are grouped together | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **Integer**| Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. | [optional] 
 **sort** | **Integer**| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**Measurement**](Measurement.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_measurements_delete_post**
> CommonResponse v1_measurements_delete_post(body)

Delete a measurement

Delete a previously submitted measurement

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

body = SwaggerClient::MeasurementDelete.new # MeasurementDelete | The startTime and variableId of the measurement to be deleted.


begin
  #Delete a measurement
  result = api_instance.v1_measurements_delete_post(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v1_measurements_delete_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MeasurementDelete**](MeasurementDelete.md)| The startTime and variableId of the measurement to be deleted. | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_measurements_get**
> Measurement v1_measurements_get(opts)

Get measurements for this user

Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. <br>Supported filter parameters:<br><ul><li><b>value</b> - Value of measurement</li><li><b>lastUpdated</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul><br>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  variable_name: "variable_name_example", # String | Name of the variable you want measurements for
  variable_category_name: "variable_category_name_example", # String | Name of the variable category you want measurements for
  source: "source_example", # String | Name of the source you want measurements for (supports exact name match only)
  value: "value_example", # String | Value of measurement
  last_updated: "last_updated_example", # String | The time that this measurement was created or last updated in the format \"YYYY-MM-DDThh:mm:ss\"
  unit: "unit_example", # String | The unit you want the measurements returned in
  start_time: "start_time_example", # String | The lower limit of measurements returned (Epoch)
  created_at: "created_at_example", # String | The time the measurement record was first created in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local.
  updated_at: "updated_at_example", # String | The time the measurement record was last changed in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local.
  end_time: "end_time_example", # String | The upper limit of measurements returned (Epoch)
  grouping_width: 56, # Integer | The time (in seconds) over which measurements are grouped together
  grouping_timezone: "grouping_timezone_example", # String | The time (in seconds) over which measurements are grouped together
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
  offset: 56, # Integer | Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
  sort: 56 # Integer | Sort by given field. If the field is prefixed with `-, it will sort in descending order.
}

begin
  #Get measurements for this user
  result = api_instance.v1_measurements_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v1_measurements_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **variable_name** | **String**| Name of the variable you want measurements for | [optional] 
 **variable_category_name** | **String**| Name of the variable category you want measurements for | [optional] 
 **source** | **String**| Name of the source you want measurements for (supports exact name match only) | [optional] 
 **value** | **String**| Value of measurement | [optional] 
 **last_updated** | **String**| The time that this measurement was created or last updated in the format \&quot;YYYY-MM-DDThh:mm:ss\&quot; | [optional] 
 **unit** | **String**| The unit you want the measurements returned in | [optional] 
 **start_time** | **String**| The lower limit of measurements returned (Epoch) | [optional] 
 **created_at** | **String**| The time the measurement record was first created in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. | [optional] 
 **updated_at** | **String**| The time the measurement record was last changed in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. | [optional] 
 **end_time** | **String**| The upper limit of measurements returned (Epoch) | [optional] 
 **grouping_width** | **Integer**| The time (in seconds) over which measurements are grouped together | [optional] 
 **grouping_timezone** | **String**| The time (in seconds) over which measurements are grouped together | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **Integer**| Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. | [optional] 
 **sort** | **Integer**| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**Measurement**](Measurement.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_measurements_post**
> v1_measurements_post(body, opts)

Post a new set or update existing measurements to the database

You can submit or update multiple measurements in a \"measurements\" sub-array.  If the variable these measurements correspond to does not already exist in the database, it will be automatically added.  The request body should look something like [{\"measurements\":[{\"startTime\":1439389320,\"value\":\"3\"}, {\"startTime\":1439389319,\"value\":\"2\"}],\"name\":\"Acne (out of 5)\",\"source\":\"QuantiModo\",\"category\":\"Symptoms\",\"combinationOperation\":\"MEAN\",\"unit\":\"/5\"}]

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

body = SwaggerClient::MeasurementSet.new # MeasurementSet | An array of measurements you want to insert.

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Post a new set or update existing measurements to the database
  api_instance.v1_measurements_post(body, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v1_measurements_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MeasurementSet**](MeasurementSet.md)| An array of measurements you want to insert. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_measurements_range_get**
> MeasurementRange v1_measurements_range_get(opts)

Get measurements range for this user

Get Unix time-stamp (epoch time) of the user's first and last measurements taken.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

opts = { 
  sources: "sources_example", # String | Enter source name to limit to specific source (varchar)
  user: 56 # Integer | If not specified, uses currently logged in user (bigint)
}

begin
  #Get measurements range for this user
  result = api_instance.v1_measurements_range_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v1_measurements_range_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sources** | **String**| Enter source name to limit to specific source (varchar) | [optional] 
 **user** | **Integer**| If not specified, uses currently logged in user (bigint) | [optional] 

### Return type

[**MeasurementRange**](MeasurementRange.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_measurements_csv_get**
> File v2_measurements_csv_get(opts)

Get Measurements CSV

Download a CSV containing all user measurements

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Get Measurements CSV
  result = api_instance.v2_measurements_csv_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v2_measurements_csv_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

**File**

### Authorization

[quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/csv



# **v2_measurements_id_delete**
> InlineResponse20012 v2_measurements_id_delete(id, opts)

Delete Measurement

Delete Measurement

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

id = 56 # Integer | id of Measurement

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Delete Measurement
  result = api_instance.v2_measurements_id_delete(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v2_measurements_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id of Measurement | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_measurements_id_get**
> InlineResponse20011 v2_measurements_id_get(id, opts)

Get Measurement

Get Measurement

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

id = 56 # Integer | id of Measurement

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Get Measurement
  result = api_instance.v2_measurements_id_get(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v2_measurements_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id of Measurement | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_measurements_id_put**
> InlineResponse20012 v2_measurements_id_put(id, opts)

Update Measurement

Update Measurement

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

id = 56 # Integer | id of Measurement

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  body: SwaggerClient::Measurement.new # Measurement | Measurement that should be updated
}

begin
  #Update Measurement
  result = api_instance.v2_measurements_id_put(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v2_measurements_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id of Measurement | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **body** | [**Measurement**](Measurement.md)| Measurement that should be updated | [optional] 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_measurements_request_csv_post**
> Integer v2_measurements_request_csv_post(opts)

Post Request for Measurements CSV

Use this endpoint to schedule a CSV export containing all user measurements to be emailed to the user within 24 hours.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Post Request for Measurements CSV
  result = api_instance.v2_measurements_request_csv_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v2_measurements_request_csv_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

**Integer**

### Authorization

[quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_measurements_request_pdf_post**
> Integer v2_measurements_request_pdf_post(opts)

Post Request for Measurements PDF

Use this endpoint to schedule a PDF export containing all user measurements to be emailed to the user within 24 hours.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Post Request for Measurements PDF
  result = api_instance.v2_measurements_request_pdf_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v2_measurements_request_pdf_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

**Integer**

### Authorization

[quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_measurements_request_xls_post**
> Integer v2_measurements_request_xls_post(opts)

Post Request for Measurements XLS

Use this endpoint to schedule a XLS export containing all user measurements to be emailed to the user within 24 hours.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Post Request for Measurements XLS
  result = api_instance.v2_measurements_request_xls_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v2_measurements_request_xls_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

**Integer**

### Authorization

[quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



