# SwaggerClient::VariablesApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_public_variables_get**](VariablesApi.md#v1_public_variables_get) | **GET** /v1/public/variables | Get public variables
[**v1_public_variables_search_search_get**](VariablesApi.md#v1_public_variables_search_search_get) | **GET** /v1/public/variables/search/{search} | Get top 5 PUBLIC variables with the most correlations
[**v1_user_variables_delete_post**](VariablesApi.md#v1_user_variables_delete_post) | **POST** /v1/userVariables/delete | Delete All Measurements For Variable
[**v1_user_variables_post**](VariablesApi.md#v1_user_variables_post) | **POST** /v1/userVariables | Update User Settings for a Variable
[**v1_user_variables_reset_post**](VariablesApi.md#v1_user_variables_reset_post) | **POST** /v1/userVariables/reset | Reset user settings for a variable to defaults
[**v1_variable_categories_get**](VariablesApi.md#v1_variable_categories_get) | **GET** /v1/variableCategories | Variable categories
[**v1_variables_get**](VariablesApi.md#v1_variables_get) | **GET** /v1/variables | Get variables with user&#39;s settings
[**v1_variables_post**](VariablesApi.md#v1_variables_post) | **POST** /v1/variables | Create Variables
[**v1_variables_search_search_get**](VariablesApi.md#v1_variables_search_search_get) | **GET** /v1/variables/search/{search} | Get variables by search query
[**v1_variables_variable_name_get**](VariablesApi.md#v1_variables_variable_name_get) | **GET** /v1/variables/{variableName} | Get info about a variable


# **v1_public_variables_get**
> Variable v1_public_variables_get(opts)

Get public variables

This endpoint retrieves an array of all public variables. Public variables are things like foods, medications, symptoms, conditions, and anything not unique to a particular user. For instance, a telephone number or name would not be a public variable.

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

api_instance = SwaggerClient::VariablesApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56, # Integer | User's id
  id: 56, # Integer | Common variable id
  category: "category_example", # String | Filter data by category
  name: "name_example", # String | Original name of the variable (supports exact name match only)
  updated_at: "updated_at_example", # String | Filter by the last time any of the properties of the variable were changed. Uses UTC format \"YYYY-MM-DDThh:mm:ss\"
  source: "source_example", # String | The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here
  latest_measurement_time: "latest_measurement_time_example", # String | Filter variables based on the last time a measurement for them was created or updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"
  number_of_raw_measurements: "number_of_raw_measurements_example", # String | Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity.
  last_source: "last_source_example", # String | Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only)
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
  offset: 56, # Integer | Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`.
  sort: 56 # Integer | Sort by given field. If the field is prefixed with `-, it will sort in descending order.
}

begin
  #Get public variables
  result = api_instance.v1_public_variables_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VariablesApi->v1_public_variables_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 
 **id** | **Integer**| Common variable id | [optional] 
 **category** | **String**| Filter data by category | [optional] 
 **name** | **String**| Original name of the variable (supports exact name match only) | [optional] 
 **updated_at** | **String**| Filter by the last time any of the properties of the variable were changed. Uses UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot; | [optional] 
 **source** | **String**| The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here | [optional] 
 **latest_measurement_time** | **String**| Filter variables based on the last time a measurement for them was created or updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot; | [optional] 
 **number_of_raw_measurements** | **String**| Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity. | [optional] 
 **last_source** | **String**| Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only) | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **Integer**| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **Integer**| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**Variable**](Variable.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_public_variables_search_search_get**
> Variable v1_public_variables_search_search_get(search, opts)

Get top 5 PUBLIC variables with the most correlations

Get top 5 PUBLIC variables with the most correlations containing the entered search characters. For example, search for 'mood' as an effect. Since 'Overall Mood' has a lot of correlations with other variables, it should be in the autocomplete list.Supported filter parameters:<ul><li><b>category</b> - Category of Variable</li></ul>

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

api_instance = SwaggerClient::VariablesApi.new

search = "search_example" # String | Search query can be some fraction of a variable name.

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56, # Integer | User's id
  variable_category_name: "variable_category_name_example", # String | Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
  source: "source_example", # String | Specify a data source name to only return variables from a specific data source.
  effect_or_cause: "effect_or_cause_example", # String | Indicate if you only want variables that have user correlations. Possible values are effect and cause.
  public_effect_or_cause: "public_effect_or_cause_example", # String | Indicate if you only want variables that have aggregated correlations.  Possible values are effect and cause.
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
  offset: 56, # Integer | Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`.
  sort: 56 # Integer | Sort by given field. If the field is prefixed with `-, it will sort in descending order.
}

begin
  #Get top 5 PUBLIC variables with the most correlations
  result = api_instance.v1_public_variables_search_search_get(search, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VariablesApi->v1_public_variables_search_search_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| Search query can be some fraction of a variable name. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 
 **variable_category_name** | **String**| Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work. | [optional] 
 **source** | **String**| Specify a data source name to only return variables from a specific data source. | [optional] 
 **effect_or_cause** | **String**| Indicate if you only want variables that have user correlations. Possible values are effect and cause. | [optional] 
 **public_effect_or_cause** | **String**| Indicate if you only want variables that have aggregated correlations.  Possible values are effect and cause. | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **Integer**| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **Integer**| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**Variable**](Variable.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_user_variables_delete_post**
> v1_user_variables_delete_post(variable_id)

Delete All Measurements For Variable

Users can delete all of their measurements for a variable

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

api_instance = SwaggerClient::VariablesApi.new

variable_id = SwaggerClient::UserVariableDelete.new # UserVariableDelete | Id of the variable whose measurements should be deleted


begin
  #Delete All Measurements For Variable
  api_instance.v1_user_variables_delete_post(variable_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VariablesApi->v1_user_variables_delete_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variable_id** | [**UserVariableDelete**](UserVariableDelete.md)| Id of the variable whose measurements should be deleted | 

### Return type

nil (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_user_variables_post**
> v1_user_variables_post(user_variables)

Update User Settings for a Variable

Users can change the parameters used in analysis of that variable such as the expected duration of action for a variable to have an effect, the estimated delay before the onset of action. In order to filter out erroneous data, they are able to set the maximum and minimum reasonable daily values for a variable.

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

api_instance = SwaggerClient::VariablesApi.new

user_variables = SwaggerClient::UserVariables.new # UserVariables | Variable user settings data


begin
  #Update User Settings for a Variable
  api_instance.v1_user_variables_post(user_variables)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VariablesApi->v1_user_variables_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_variables** | [**UserVariables**](UserVariables.md)| Variable user settings data | 

### Return type

nil (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_user_variables_reset_post**
> v1_user_variables_reset_post(variable_id)

Reset user settings for a variable to defaults

Reset user settings for a variable to defaults

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

api_instance = SwaggerClient::VariablesApi.new

variable_id = SwaggerClient::UserVariableDelete.new # UserVariableDelete | Id of the variable that should be reset


begin
  #Reset user settings for a variable to defaults
  api_instance.v1_user_variables_reset_post(variable_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VariablesApi->v1_user_variables_reset_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variable_id** | [**UserVariableDelete**](UserVariableDelete.md)| Id of the variable that should be reset | 

### Return type

nil (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_variable_categories_get**
> Array&lt;VariableCategory&gt; v1_variable_categories_get

Variable categories

The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.

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

api_instance = SwaggerClient::VariablesApi.new

begin
  #Variable categories
  result = api_instance.v1_variable_categories_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VariablesApi->v1_variable_categories_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VariableCategory&gt;**](VariableCategory.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_variables_get**
> Variable v1_variables_get(opts)

Get variables with user's settings

Get variables for which the user has measurements. If the user has specified variable settings, these are provided instead of the common variable defaults.

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

api_instance = SwaggerClient::VariablesApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56, # Integer | User's id
  id: 56, # Integer | Common variable id
  category: "category_example", # String | Filter data by category
  name: "name_example", # String | Original name of the variable (supports exact name match only)
  updated_at: "updated_at_example", # String | Filter by the last time any of the properties of the variable were changed. Uses UTC format \"YYYY-MM-DDThh:mm:ss\"
  source: "source_example", # String | The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here
  latest_measurement_time: "latest_measurement_time_example", # String | Filter variables based on the last time a measurement for them was created or updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"
  number_of_raw_measurements: "number_of_raw_measurements_example", # String | Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity.
  last_source: "last_source_example", # String | Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only)
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
  offset: 56, # Integer | Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`.
  sort: 56 # Integer | Sort by given field. If the field is prefixed with `-, it will sort in descending order.
}

begin
  #Get variables with user's settings
  result = api_instance.v1_variables_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VariablesApi->v1_variables_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 
 **id** | **Integer**| Common variable id | [optional] 
 **category** | **String**| Filter data by category | [optional] 
 **name** | **String**| Original name of the variable (supports exact name match only) | [optional] 
 **updated_at** | **String**| Filter by the last time any of the properties of the variable were changed. Uses UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot; | [optional] 
 **source** | **String**| The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here | [optional] 
 **latest_measurement_time** | **String**| Filter variables based on the last time a measurement for them was created or updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot; | [optional] 
 **number_of_raw_measurements** | **String**| Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity. | [optional] 
 **last_source** | **String**| Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only) | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **Integer**| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 
 **sort** | **Integer**| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**Variable**](Variable.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_variables_post**
> v1_variables_post(body, opts)

Create Variables

Allows the client to create a new variable in the `variables` table.

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

api_instance = SwaggerClient::VariablesApi.new

body = SwaggerClient::VariablesNew.new # VariablesNew | Original name for the variable.

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Create Variables
  api_instance.v1_variables_post(body, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VariablesApi->v1_variables_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VariablesNew**](VariablesNew.md)| Original name for the variable. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

nil (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_variables_search_search_get**
> Array&lt;Variable&gt; v1_variables_search_search_get(search, opts)

Get variables by search query

Get variables containing the search characters for which the currently logged in user has measurements. Used to provide auto-complete function in variable search boxes.

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

api_instance = SwaggerClient::VariablesApi.new

search = "search_example" # String | Search query which may be an entire variable name or a fragment of one.

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56, # Integer | User's id
  variable_category_name: "variable_category_name_example", # String | Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
  include_public: true, # BOOLEAN | Set to true if you would like to include public variables when no user variables are found.
  manual_tracking: true, # BOOLEAN | Set to true if you would like to exlude variables like apps and website names.
  source: "source_example", # String | Specify a data source name to only return variables from a specific data source.
  effect_or_cause: "effect_or_cause_example", # String | Indicate if you only want variables that have user correlations. Possible values are effect and cause.
  public_effect_or_cause: "public_effect_or_cause_example", # String | Indicate if you only want variables that have aggregated correlations.  Possible values are effect and cause.
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
  offset: 56 # Integer | Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, `imit=20&offset=60`.
}

begin
  #Get variables by search query
  result = api_instance.v1_variables_search_search_get(search, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VariablesApi->v1_variables_search_search_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| Search query which may be an entire variable name or a fragment of one. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 
 **variable_category_name** | **String**| Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work. | [optional] 
 **include_public** | **BOOLEAN**| Set to true if you would like to include public variables when no user variables are found. | [optional] 
 **manual_tracking** | **BOOLEAN**| Set to true if you would like to exlude variables like apps and website names. | [optional] 
 **source** | **String**| Specify a data source name to only return variables from a specific data source. | [optional] 
 **effect_or_cause** | **String**| Indicate if you only want variables that have user correlations. Possible values are effect and cause. | [optional] 
 **public_effect_or_cause** | **String**| Indicate if you only want variables that have aggregated correlations.  Possible values are effect and cause. | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **Integer**| Since the maximum limit is 200 records, to get more than that you&#39;ll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the &#x60;limit&#x60; and &#x60;offset&#x60; query parameters.  For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters, &#x60;imit&#x3D;20&amp;offset&#x3D;60&#x60;. | [optional] 

### Return type

[**Array&lt;Variable&gt;**](Variable.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_variables_variable_name_get**
> Variable v1_variables_variable_name_get(variable_name, opts)

Get info about a variable

Get all of the settings and information about a variable by its name. If the logged in user has modified the settings for the variable, these will be provided instead of the default settings for that variable.

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

api_instance = SwaggerClient::VariablesApi.new

variable_name = "variable_name_example" # String | Variable name

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Get info about a variable
  result = api_instance.v1_variables_variable_name_get(variable_name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VariablesApi->v1_variables_variable_name_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variable_name** | **String**| Variable name | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

[**Variable**](Variable.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



