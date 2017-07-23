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
[**v1_measurements_update_post**](MeasurementsApi.md#v1_measurements_update_post) | **POST** /v1/measurements/update | Update a measurement
[**v2_measurements_csv_get**](MeasurementsApi.md#v2_measurements_csv_get) | **GET** /v2/measurements/csv | Get Measurements CSV
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
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
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

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

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
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

body = SwaggerClient::MeasurementSource.new # MeasurementSource | An array of names of data sources you want to add.

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
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
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

nil (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_measurements_daily_get**
> Measurement v1_measurements_daily_get(variable_name, opts)

Get daily measurements for this user

Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. Supported filter parameters:<ul><li><b>value</b> - Value of measurement</li><li><b>updatedAt</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

variable_name = "variable_name_example" # String | Name of the variable you want measurements for

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56, # Integer | User's id
  unit_abbreviated_name: "unit_abbreviated_name_example", # String | The unit your want the measurements in
  start_time: "start_time_example", # String | The lower limit of measurements returned (UTC Iso8601 \"YYYY-MM-DDThh:mm:ss\" format)
  end_time: "end_time_example", # String | The upper limit of measurements returned (UTC Iso8601 \"YYYY-MM-DDThh:mm:ss\" format)
  grouping_width: 56, # Integer | The time (in seconds) over which measurements are grouped together
  grouping_timezone: "grouping_timezone_example", # String | The time (in seconds) over which measurements are grouped together
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
  offset: 56, # Integer | Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`.
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
 **user_id** | **Integer**| User&#39;s id | [optional] 
 **unit_abbreviated_name** | **String**| The unit your want the measurements in | [optional] 
 **start_time** | **String**| The lower limit of measurements returned (UTC Iso8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot; format) | [optional] 
 **end_time** | **String**| The upper limit of measurements returned (UTC Iso8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot; format) | [optional] 
 **grouping_width** | **Integer**| The time (in seconds) over which measurements are grouped together | [optional] 
 **grouping_timezone** | **String**| The time (in seconds) over which measurements are grouped together | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **Integer**| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **Integer**| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**Measurement**](Measurement.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

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
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
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

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_measurements_get**
> Measurement v1_measurements_get(opts)

Get measurements for this user

Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. Supported filter parameters:<ul><li><b>value</b> - Value of measurement</li><li><b>updatedAt</b> - The time that this measurement was created or last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56, # Integer | User's id
  id: 56, # Integer | Measurement id
  variable_name: "variable_name_example", # String | Name of the variable you want measurements for
  variable_category_name: "variable_category_name_example", # String | Name of the variable category you want measurements for
  source_name: "source_name_example", # String | ID of the source you want measurements for (supports exact name match only)
  value: "value_example", # String | Value of measurement
  unit_abbreviated_name: "unit_abbreviated_name_example", # String | The unit you want the measurements returned in
  earliest_measurement_time: "earliest_measurement_time_example", # String | The lower limit of measurements returned in ISO 8601 format or epoch seconds (unixtime)
  latest_measurement_time: "latest_measurement_time_example", # String | The upper limit of measurements returned in ISO 8601 format or epoch seconds (unixtime)
  created_at: "created_at_example", # String | The time the measurement record was first created in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local.
  updated_at: "updated_at_example", # String | The time the measurement record was last changed in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local.
  grouping_width: 56, # Integer | The time (in seconds) over which measurements are grouped together
  grouping_timezone: "grouping_timezone_example", # String | The time (in seconds) over which measurements are grouped together
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
  offset: 56, # Integer | Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`.
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
 **user_id** | **Integer**| User&#39;s id | [optional] 
 **id** | **Integer**| Measurement id | [optional] 
 **variable_name** | **String**| Name of the variable you want measurements for | [optional] 
 **variable_category_name** | **String**| Name of the variable category you want measurements for | [optional] 
 **source_name** | **String**| ID of the source you want measurements for (supports exact name match only) | [optional] 
 **value** | **String**| Value of measurement | [optional] 
 **unit_abbreviated_name** | **String**| The unit you want the measurements returned in | [optional] 
 **earliest_measurement_time** | **String**| The lower limit of measurements returned in ISO 8601 format or epoch seconds (unixtime) | [optional] 
 **latest_measurement_time** | **String**| The upper limit of measurements returned in ISO 8601 format or epoch seconds (unixtime) | [optional] 
 **created_at** | **String**| The time the measurement record was first created in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. | [optional] 
 **updated_at** | **String**| The time the measurement record was last changed in the format YYYY-MM-DDThh:mm:ss. Time zone should be UTC and not local. | [optional] 
 **grouping_width** | **Integer**| The time (in seconds) over which measurements are grouped together | [optional] 
 **grouping_timezone** | **String**| The time (in seconds) over which measurements are grouped together | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **Integer**| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **Integer**| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**Measurement**](Measurement.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

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
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

body = SwaggerClient::MeasurementSet.new # MeasurementSet | An array of measurements you want to insert.

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
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
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

nil (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

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
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
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

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_measurements_update_post**
> CommonResponse v1_measurements_update_post(body)

Update a measurement

Delete a previously submitted measurement

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

body = SwaggerClient::MeasurementUpdate.new # MeasurementUpdate | The id as well as the new startTime, note, and/or value of the measurement to be updated


begin
  #Update a measurement
  result = api_instance.v1_measurements_update_post(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeasurementsApi->v1_measurements_update_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MeasurementUpdate**](MeasurementUpdate.md)| The id as well as the new startTime, note, and/or value of the measurement to be updated | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

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
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
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
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

**File**

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/csv



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
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
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
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

**Integer**

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

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
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
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
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

**Integer**

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

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
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MeasurementsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
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
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

**Integer**

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



