# SwaggerClient::ApplicationEndpointsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2_application_connections_get**](ApplicationEndpointsApi.md#v2_application_connections_get) | **GET** /v2/application/connections | Get all Connections
[**v2_application_credentials_get**](ApplicationEndpointsApi.md#v2_application_credentials_get) | **GET** /v2/application/credentials | Get all Credentials
[**v2_application_measurements_get**](ApplicationEndpointsApi.md#v2_application_measurements_get) | **GET** /v2/application/measurements | Get measurements for all users using your application
[**v2_application_tracking_reminders_get**](ApplicationEndpointsApi.md#v2_application_tracking_reminders_get) | **GET** /v2/application/trackingReminders | Get tracking reminders
[**v2_application_updates_get**](ApplicationEndpointsApi.md#v2_application_updates_get) | **GET** /v2/application/updates | Get all Updates
[**v2_application_user_variable_relationships_get**](ApplicationEndpointsApi.md#v2_application_user_variable_relationships_get) | **GET** /v2/application/userVariableRelationships | Get all UserVariableRelationships
[**v2_application_user_variables_get**](ApplicationEndpointsApi.md#v2_application_user_variables_get) | **GET** /v2/application/userVariables | Get all UserVariables
[**v2_application_variable_user_sources_get**](ApplicationEndpointsApi.md#v2_application_variable_user_sources_get) | **GET** /v2/application/variableUserSources | Get all VariableUserSources
[**v2_application_votes_get**](ApplicationEndpointsApi.md#v2_application_votes_get) | **GET** /v2/application/votes | Get all Votes


# **v2_application_connections_get**
> InlineResponse2003 v2_application_connections_get(opts)

Get all Connections

Get all Connections

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: internalApiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = SwaggerClient::ApplicationEndpointsApi.new

opts = { 
  access_token: "access_token_example", # String | Application's OAuth2 access token
  connector_id: 56, # Integer | The id for the connector data source for which the connection is connected
  connect_status: "connect_status_example", # String | Indicates whether a connector is currently connected to a service for a user.
  connect_error: "connect_error_example", # String | Error message if there is a problem with authorizing this connection.
  update_requested_at: "update_requested_at_example", # String | Time at which an update was requested by a user.
  update_status: "update_status_example", # String | Indicates whether a connector is currently updated.
  update_error: "update_error_example", # String | Indicates if there was an error during the update.
  last_successful_updated_at: "last_successful_updated_at_example", # String | The time at which the connector was last successfully updated.
  created_at: "created_at_example", # String | When the record was first created. Use ISO 8601 datetime format 
  updated_at: "updated_at_example", # String | When the record was last updated. Use ISO 8601 datetime format 
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  offset: 56, # Integer | OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  sort: "sort_example" # String | Sort by given field. If the field is prefixed with '-', it will sort in descending order.
}

begin
  #Get all Connections
  result = api_instance.v2_application_connections_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApplicationEndpointsApi->v2_application_connections_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| Application&#39;s OAuth2 access token | [optional] 
 **connector_id** | **Integer**| The id for the connector data source for which the connection is connected | [optional] 
 **connect_status** | **String**| Indicates whether a connector is currently connected to a service for a user. | [optional] 
 **connect_error** | **String**| Error message if there is a problem with authorizing this connection. | [optional] 
 **update_requested_at** | **String**| Time at which an update was requested by a user. | [optional] 
 **update_status** | **String**| Indicates whether a connector is currently updated. | [optional] 
 **update_error** | **String**| Indicates if there was an error during the update. | [optional] 
 **last_successful_updated_at** | **String**| The time at which the connector was last successfully updated. | [optional] 
 **created_at** | **String**| When the record was first created. Use ISO 8601 datetime format  | [optional] 
 **updated_at** | **String**| When the record was last updated. Use ISO 8601 datetime format  | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **Integer**| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **String**| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[oauth2](../README.md#oauth2), [internalApiKey](../README.md#internalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_application_credentials_get**
> InlineResponse2004 v2_application_credentials_get(opts)

Get all Credentials

Get all Credentials

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: internalApiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = SwaggerClient::ApplicationEndpointsApi.new

opts = { 
  access_token: "access_token_example", # String | Application's OAuth2 access token
  connector_id: 56, # Integer | The id for the connector data source from which the credential was obtained
  attr_key: "attr_key_example", # String | Attribute name such as token, userid, username, or password
  attr_value: "attr_value_example", # String | Encrypted value for the attribute specified
  created_at: "created_at_example", # String | When the record was first created. Use ISO 8601 datetime format 
  updated_at: "updated_at_example", # String | When the record was last updated. Use ISO 8601 datetime format 
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  offset: 56, # Integer | OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  sort: "sort_example" # String | Sort by given field. If the field is prefixed with '-', it will sort in descending order.
}

begin
  #Get all Credentials
  result = api_instance.v2_application_credentials_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApplicationEndpointsApi->v2_application_credentials_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| Application&#39;s OAuth2 access token | [optional] 
 **connector_id** | **Integer**| The id for the connector data source from which the credential was obtained | [optional] 
 **attr_key** | **String**| Attribute name such as token, userid, username, or password | [optional] 
 **attr_value** | **String**| Encrypted value for the attribute specified | [optional] 
 **created_at** | **String**| When the record was first created. Use ISO 8601 datetime format  | [optional] 
 **updated_at** | **String**| When the record was last updated. Use ISO 8601 datetime format  | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **Integer**| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **String**| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[oauth2](../README.md#oauth2), [internalApiKey](../README.md#internalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_application_measurements_get**
> InlineResponse2005 v2_application_measurements_get(opts)

Get measurements for all users using your application

Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: internalApiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = SwaggerClient::ApplicationEndpointsApi.new

opts = { 
  access_token: "access_token_example", # String | Application's OAuth2 access token
  client_id: "client_id_example", # String | The ID of the client application which originally stored the measurement
  connector_id: 56, # Integer | The id for the connector data source from which the measurement was obtained
  variable_id: 56, # Integer | ID of the variable for which we are creating the measurement records
  source_id: 56, # Integer | Application or device used to record the measurement values
  start_time: "start_time_example", # String | start time for the measurement event. Use ISO 8601 datetime format 
  value: 3.4, # Float | The value of the measurement after conversion to the default unit for that variable
  unit_id: 56, # Integer | The default unit id for the variable
  original_value: 3.4, # Float | Unconverted value of measurement as originally posted (before conversion to default unit)
  original_unit_id: 56, # Integer | Unit id of the measurement as originally submitted
  duration: 56, # Integer | Duration of the event being measurement in seconds
  note: "note_example", # String | An optional note the user may include with their measurement
  latitude: 3.4, # Float | Latitude at which the measurement was taken
  longitude: 3.4, # Float | Longitude at which the measurement was taken
  location: "location_example", # String | Optional human readable name for the location where the measurement was recorded
  created_at: "created_at_example", # String | When the record was first created. Use ISO 8601 datetime format 
  updated_at: "updated_at_example", # String | When the record was last updated. Use ISO 8601 datetime format 
  error: "error_example", # String | An error message if there is a problem with the measurement
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  offset: 56, # Integer | OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  sort: "sort_example" # String | Sort by given field. If the field is prefixed with '-', it will sort in descending order.
}

begin
  #Get measurements for all users using your application
  result = api_instance.v2_application_measurements_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApplicationEndpointsApi->v2_application_measurements_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| Application&#39;s OAuth2 access token | [optional] 
 **client_id** | **String**| The ID of the client application which originally stored the measurement | [optional] 
 **connector_id** | **Integer**| The id for the connector data source from which the measurement was obtained | [optional] 
 **variable_id** | **Integer**| ID of the variable for which we are creating the measurement records | [optional] 
 **source_id** | **Integer**| Application or device used to record the measurement values | [optional] 
 **start_time** | **String**| start time for the measurement event. Use ISO 8601 datetime format  | [optional] 
 **value** | **Float**| The value of the measurement after conversion to the default unit for that variable | [optional] 
 **unit_id** | **Integer**| The default unit id for the variable | [optional] 
 **original_value** | **Float**| Unconverted value of measurement as originally posted (before conversion to default unit) | [optional] 
 **original_unit_id** | **Integer**| Unit id of the measurement as originally submitted | [optional] 
 **duration** | **Integer**| Duration of the event being measurement in seconds | [optional] 
 **note** | **String**| An optional note the user may include with their measurement | [optional] 
 **latitude** | **Float**| Latitude at which the measurement was taken | [optional] 
 **longitude** | **Float**| Longitude at which the measurement was taken | [optional] 
 **location** | **String**| Optional human readable name for the location where the measurement was recorded | [optional] 
 **created_at** | **String**| When the record was first created. Use ISO 8601 datetime format  | [optional] 
 **updated_at** | **String**| When the record was last updated. Use ISO 8601 datetime format  | [optional] 
 **error** | **String**| An error message if there is a problem with the measurement | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **Integer**| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **String**| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[oauth2](../README.md#oauth2), [internalApiKey](../README.md#internalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_application_tracking_reminders_get**
> InlineResponse2001 v2_application_tracking_reminders_get(opts)

Get tracking reminders

Get the variable id, frequency, and default value for the user tracking reminders 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: internalApiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = SwaggerClient::ApplicationEndpointsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  client_id: "client_id_example", # String | The ID of the client application which last created or updated this trackingReminder
  created_at: "created_at_example", # String | When the record was first created. Use ISO 8601 datetime format 
  updated_at: "updated_at_example", # String | When the record was last updated. Use ISO 8601 datetime format 
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  offset: 56, # Integer | OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  sort: "sort_example" # String | Sort by given field. If the field is prefixed with '-', it will sort in descending order.
}

begin
  #Get tracking reminders
  result = api_instance.v2_application_tracking_reminders_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApplicationEndpointsApi->v2_application_tracking_reminders_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **client_id** | **String**| The ID of the client application which last created or updated this trackingReminder | [optional] 
 **created_at** | **String**| When the record was first created. Use ISO 8601 datetime format  | [optional] 
 **updated_at** | **String**| When the record was last updated. Use ISO 8601 datetime format  | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **Integer**| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **String**| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[oauth2](../README.md#oauth2), [internalApiKey](../README.md#internalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_application_updates_get**
> InlineResponse2006 v2_application_updates_get(opts)

Get all Updates

Get all Updates

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: internalApiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = SwaggerClient::ApplicationEndpointsApi.new

opts = { 
  access_token: "access_token_example", # String | Application's OAuth2 access token
  connector_id: 56, # Integer | connector_id
  number_of_measurements: 56, # Integer | number_of_measurements
  success: true, # BOOLEAN | success
  message: "message_example", # String | message
  created_at: "created_at_example", # String | When the record was first created. Use ISO 8601 datetime format 
  updated_at: "updated_at_example", # String | When the record was last updated. Use ISO 8601 datetime format 
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  offset: 56, # Integer | OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  sort: "sort_example" # String | Sort by given field. If the field is prefixed with '-', it will sort in descending order.
}

begin
  #Get all Updates
  result = api_instance.v2_application_updates_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApplicationEndpointsApi->v2_application_updates_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| Application&#39;s OAuth2 access token | [optional] 
 **connector_id** | **Integer**| connector_id | [optional] 
 **number_of_measurements** | **Integer**| number_of_measurements | [optional] 
 **success** | **BOOLEAN**| success | [optional] 
 **message** | **String**| message | [optional] 
 **created_at** | **String**| When the record was first created. Use ISO 8601 datetime format  | [optional] 
 **updated_at** | **String**| When the record was last updated. Use ISO 8601 datetime format  | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **Integer**| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **String**| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[oauth2](../README.md#oauth2), [internalApiKey](../README.md#internalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_application_user_variable_relationships_get**
> InlineResponse2007 v2_application_user_variable_relationships_get(opts)

Get all UserVariableRelationships

Get all UserVariableRelationships

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: internalApiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = SwaggerClient::ApplicationEndpointsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  id: 56, # Integer | id
  confidence_level: "confidence_level_example", # String | Our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors
  confidence_score: 3.4, # Float | A quantitative representation of our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors
  direction: "direction_example", # String | Direction is positive if higher predictor values generally precede higher outcome values. Direction is negative if higher predictor values generally precede lower outcome values.
  duration_of_action: 56, # Integer | Estimated number of seconds following the onset delay in which a stimulus produces a perceivable effect
  error_message: "error_message_example", # String | error_message
  onset_delay: 56, # Integer | Estimated number of seconds that pass before a stimulus produces a perceivable effect
  outcome_variable_id: 56, # Integer | Variable ID for the outcome variable
  predictor_variable_id: 56, # Integer | Variable ID for the predictor variable
  predictor_unit_id: 56, # Integer | ID for default unit of the predictor variable
  sinn_rank: 3.4, # Float | A value representative of the relevance of this predictor relative to other predictors of this outcome.  Usually used for relevancy sorting.
  strength_level: "strength_level_example", # String | Can be weak, medium, or strong based on the size of the effect which the predictor appears to have on the outcome relative to other variable relationship strength scores.
  strength_score: 3.4, # Float | A value represented to the size of the effect which the predictor appears to have on the outcome.
  vote: "vote_example", # String | vote
  value_predicting_high_outcome: 3.4, # Float | Value for the predictor variable (in it's default unit) which typically precedes an above average outcome value
  value_predicting_low_outcome: 3.4, # Float | Value for the predictor variable (in it's default unit) which typically precedes a below average outcome value
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  offset: 56, # Integer | OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  sort: "sort_example" # String | Sort by given field. If the field is prefixed with '-', it will sort in descending order.
}

begin
  #Get all UserVariableRelationships
  result = api_instance.v2_application_user_variable_relationships_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApplicationEndpointsApi->v2_application_user_variable_relationships_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **id** | **Integer**| id | [optional] 
 **confidence_level** | **String**| Our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors | [optional] 
 **confidence_score** | **Float**| A quantitative representation of our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors | [optional] 
 **direction** | **String**| Direction is positive if higher predictor values generally precede higher outcome values. Direction is negative if higher predictor values generally precede lower outcome values. | [optional] 
 **duration_of_action** | **Integer**| Estimated number of seconds following the onset delay in which a stimulus produces a perceivable effect | [optional] 
 **error_message** | **String**| error_message | [optional] 
 **onset_delay** | **Integer**| Estimated number of seconds that pass before a stimulus produces a perceivable effect | [optional] 
 **outcome_variable_id** | **Integer**| Variable ID for the outcome variable | [optional] 
 **predictor_variable_id** | **Integer**| Variable ID for the predictor variable | [optional] 
 **predictor_unit_id** | **Integer**| ID for default unit of the predictor variable | [optional] 
 **sinn_rank** | **Float**| A value representative of the relevance of this predictor relative to other predictors of this outcome.  Usually used for relevancy sorting. | [optional] 
 **strength_level** | **String**| Can be weak, medium, or strong based on the size of the effect which the predictor appears to have on the outcome relative to other variable relationship strength scores. | [optional] 
 **strength_score** | **Float**| A value represented to the size of the effect which the predictor appears to have on the outcome. | [optional] 
 **vote** | **String**| vote | [optional] 
 **value_predicting_high_outcome** | **Float**| Value for the predictor variable (in it&#39;s default unit) which typically precedes an above average outcome value | [optional] 
 **value_predicting_low_outcome** | **Float**| Value for the predictor variable (in it&#39;s default unit) which typically precedes a below average outcome value | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **Integer**| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **String**| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[oauth2](../README.md#oauth2), [internalApiKey](../README.md#internalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_application_user_variables_get**
> InlineResponse2008 v2_application_user_variables_get(opts)

Get all UserVariables

Get all UserVariables

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: internalApiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = SwaggerClient::ApplicationEndpointsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  client_id: "client_id_example", # String | The ID of the client application which last created or updated this user variable
  parent_id: 56, # Integer | ID of the parent variable if this variable has any parent
  variable_id: 56, # Integer | ID of variable
  default_unit_id: 56, # Integer | D of unit to use for this variable
  minimum_allowed_value: 3.4, # Float | Minimum reasonable value for this variable (uses default unit)
  maximum_allowed_value: 3.4, # Float | Maximum reasonable value for this variable (uses default unit)
  filling_value: 3.4, # Float | Value for replacing null measurements
  join_with: 56, # Integer | The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables
  onset_delay: 56, # Integer | Estimated number of seconds that pass before a stimulus produces a perceivable effect
  duration_of_action: 56, # Integer | Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect
  variable_category_id: 56, # Integer | ID of variable category
  updated: 56, # Integer | updated
  public: 56, # Integer | Is variable public
  cause_only: true, # BOOLEAN | A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user
  filling_type: "filling_type_example", # String | 0 -> No filling, 1 -> Use filling-value
  number_of_measurements: 56, # Integer | Number of measurements
  number_of_processed_measurements: 56, # Integer | Number of processed measurements
  measurements_at_last_analysis: 56, # Integer | Number of measurements at last analysis
  last_unit_id: 56, # Integer | ID of last Unit
  last_original_unit_id: 56, # Integer | ID of last original Unit
  last_original_value: 56, # Integer | Last original value which is stored
  last_value: 3.4, # Float | Last Value
  last_source_id: 56, # Integer | ID of last source
  number_of_correlations: 56, # Integer | Number of correlations for this variable
  status: "status_example", # String | status
  error_message: "error_message_example", # String | error_message
  last_successful_update_time: "last_successful_update_time_example", # String | When this variable or its settings were last updated
  standard_deviation: 3.4, # Float | Standard deviation
  variance: 3.4, # Float | Variance
  minimum_recorded_value: 3.4, # Float | Minimum recorded value of this variable
  maximum_recorded_value: 3.4, # Float | Maximum recorded value of this variable
  mean: 3.4, # Float | Mean
  median: 3.4, # Float | Median
  most_common_unit_id: 56, # Integer | Most common Unit ID
  most_common_value: 3.4, # Float | Most common value
  number_of_unique_daily_values: 3.4, # Float | Number of unique daily values
  number_of_changes: 56, # Integer | Number of changes
  skewness: 3.4, # Float | Skewness
  kurtosis: 3.4, # Float | Kurtosis
  latitude: 3.4, # Float | Latitude
  longitude: 3.4, # Float | Longitude
  location: "location_example", # String | Location
  created_at: "created_at_example", # String | When the record was first created. Use ISO 8601 datetime format 
  updated_at: "updated_at_example", # String | When the record was last updated. Use ISO 8601 datetime format 
  outcome: true, # BOOLEAN | Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables
  sources: "sources_example", # String | Comma-separated list of source names to limit variables to those sources
  earliest_source_time: 56, # Integer | Earliest source time
  latest_source_time: 56, # Integer | Latest source time
  earliest_measurement_time: 56, # Integer | Earliest measurement time
  latest_measurement_time: 56, # Integer | Latest measurement time
  earliest_filling_time: 56, # Integer | Earliest filling time
  latest_filling_time: 56, # Integer | Latest filling time
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  offset: 56, # Integer | OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  sort: "sort_example" # String | Sort by given field. If the field is prefixed with '-', it will sort in descending order.
}

begin
  #Get all UserVariables
  result = api_instance.v2_application_user_variables_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApplicationEndpointsApi->v2_application_user_variables_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **client_id** | **String**| The ID of the client application which last created or updated this user variable | [optional] 
 **parent_id** | **Integer**| ID of the parent variable if this variable has any parent | [optional] 
 **variable_id** | **Integer**| ID of variable | [optional] 
 **default_unit_id** | **Integer**| D of unit to use for this variable | [optional] 
 **minimum_allowed_value** | **Float**| Minimum reasonable value for this variable (uses default unit) | [optional] 
 **maximum_allowed_value** | **Float**| Maximum reasonable value for this variable (uses default unit) | [optional] 
 **filling_value** | **Float**| Value for replacing null measurements | [optional] 
 **join_with** | **Integer**| The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables | [optional] 
 **onset_delay** | **Integer**| Estimated number of seconds that pass before a stimulus produces a perceivable effect | [optional] 
 **duration_of_action** | **Integer**| Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect | [optional] 
 **variable_category_id** | **Integer**| ID of variable category | [optional] 
 **updated** | **Integer**| updated | [optional] 
 **public** | **Integer**| Is variable public | [optional] 
 **cause_only** | **BOOLEAN**| A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user | [optional] 
 **filling_type** | **String**| 0 -&gt; No filling, 1 -&gt; Use filling-value | [optional] 
 **number_of_measurements** | **Integer**| Number of measurements | [optional] 
 **number_of_processed_measurements** | **Integer**| Number of processed measurements | [optional] 
 **measurements_at_last_analysis** | **Integer**| Number of measurements at last analysis | [optional] 
 **last_unit_id** | **Integer**| ID of last Unit | [optional] 
 **last_original_unit_id** | **Integer**| ID of last original Unit | [optional] 
 **last_original_value** | **Integer**| Last original value which is stored | [optional] 
 **last_value** | **Float**| Last Value | [optional] 
 **last_source_id** | **Integer**| ID of last source | [optional] 
 **number_of_correlations** | **Integer**| Number of correlations for this variable | [optional] 
 **status** | **String**| status | [optional] 
 **error_message** | **String**| error_message | [optional] 
 **last_successful_update_time** | **String**| When this variable or its settings were last updated | [optional] 
 **standard_deviation** | **Float**| Standard deviation | [optional] 
 **variance** | **Float**| Variance | [optional] 
 **minimum_recorded_value** | **Float**| Minimum recorded value of this variable | [optional] 
 **maximum_recorded_value** | **Float**| Maximum recorded value of this variable | [optional] 
 **mean** | **Float**| Mean | [optional] 
 **median** | **Float**| Median | [optional] 
 **most_common_unit_id** | **Integer**| Most common Unit ID | [optional] 
 **most_common_value** | **Float**| Most common value | [optional] 
 **number_of_unique_daily_values** | **Float**| Number of unique daily values | [optional] 
 **number_of_changes** | **Integer**| Number of changes | [optional] 
 **skewness** | **Float**| Skewness | [optional] 
 **kurtosis** | **Float**| Kurtosis | [optional] 
 **latitude** | **Float**| Latitude | [optional] 
 **longitude** | **Float**| Longitude | [optional] 
 **location** | **String**| Location | [optional] 
 **created_at** | **String**| When the record was first created. Use ISO 8601 datetime format  | [optional] 
 **updated_at** | **String**| When the record was last updated. Use ISO 8601 datetime format  | [optional] 
 **outcome** | **BOOLEAN**| Outcome variables (those with &#x60;outcome&#x60; &#x3D;&#x3D; 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables | [optional] 
 **sources** | **String**| Comma-separated list of source names to limit variables to those sources | [optional] 
 **earliest_source_time** | **Integer**| Earliest source time | [optional] 
 **latest_source_time** | **Integer**| Latest source time | [optional] 
 **earliest_measurement_time** | **Integer**| Earliest measurement time | [optional] 
 **latest_measurement_time** | **Integer**| Latest measurement time | [optional] 
 **earliest_filling_time** | **Integer**| Earliest filling time | [optional] 
 **latest_filling_time** | **Integer**| Latest filling time | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **Integer**| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **String**| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[oauth2](../README.md#oauth2), [internalApiKey](../README.md#internalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_application_variable_user_sources_get**
> InlineResponse2009 v2_application_variable_user_sources_get(opts)

Get all VariableUserSources

Get all VariableUserSources

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: internalApiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = SwaggerClient::ApplicationEndpointsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  variable_id: 56, # Integer | ID of variable
  timestamp: 56, # Integer | Time that this measurement occurred Uses epoch minute (epoch time divided by 60)
  earliest_measurement_time: 56, # Integer | Earliest measurement time
  latest_measurement_time: 56, # Integer | Latest measurement time
  created_at: "created_at_example", # String | When the record was first created. Use ISO 8601 datetime format 
  updated_at: "updated_at_example", # String | When the record was last updated. Use ISO 8601 datetime format 
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  offset: 56, # Integer | OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  sort: "sort_example" # String | Sort by given field. If the field is prefixed with '-', it will sort in descending order.
}

begin
  #Get all VariableUserSources
  result = api_instance.v2_application_variable_user_sources_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApplicationEndpointsApi->v2_application_variable_user_sources_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **variable_id** | **Integer**| ID of variable | [optional] 
 **timestamp** | **Integer**| Time that this measurement occurred Uses epoch minute (epoch time divided by 60) | [optional] 
 **earliest_measurement_time** | **Integer**| Earliest measurement time | [optional] 
 **latest_measurement_time** | **Integer**| Latest measurement time | [optional] 
 **created_at** | **String**| When the record was first created. Use ISO 8601 datetime format  | [optional] 
 **updated_at** | **String**| When the record was last updated. Use ISO 8601 datetime format  | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **Integer**| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **String**| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[oauth2](../README.md#oauth2), [internalApiKey](../README.md#internalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v2_application_votes_get**
> InlineResponse20010 v2_application_votes_get(opts)

Get all Votes

Get all Votes

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: internalApiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = SwaggerClient::ApplicationEndpointsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  client_id: "client_id_example", # String | The ID of the client application which last created or updated this vote
  cause_id: 56, # Integer | ID of predictor variable
  effect_id: 56, # Integer | ID of outcome variable
  value: 56, # Integer | Value of Vote. 1 is for upvote. 0 is for downvote.  Otherwise, there is no vote.
  created_at: "created_at_example", # String | When the record was first created. Use ISO 8601 datetime format 
  updated_at: "updated_at_example", # String | When the record was last updated. Use ISO 8601 datetime format 
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  offset: 56, # Integer | OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  sort: "sort_example" # String | Sort by given field. If the field is prefixed with '-', it will sort in descending order.
}

begin
  #Get all Votes
  result = api_instance.v2_application_votes_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApplicationEndpointsApi->v2_application_votes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **client_id** | **String**| The ID of the client application which last created or updated this vote | [optional] 
 **cause_id** | **Integer**| ID of predictor variable | [optional] 
 **effect_id** | **Integer**| ID of outcome variable | [optional] 
 **value** | **Integer**| Value of Vote. 1 is for upvote. 0 is for downvote.  Otherwise, there is no vote. | [optional] 
 **created_at** | **String**| When the record was first created. Use ISO 8601 datetime format  | [optional] 
 **updated_at** | **String**| When the record was last updated. Use ISO 8601 datetime format  | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **Integer**| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **String**| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[oauth2](../README.md#oauth2), [internalApiKey](../README.md#internalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



