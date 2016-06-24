# SwaggerClient::CorrelationsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_aggregated_correlations_get**](CorrelationsApi.md#v1_aggregated_correlations_get) | **GET** /v1/aggregatedCorrelations | Get aggregated correlations
[**v1_aggregated_correlations_post**](CorrelationsApi.md#v1_aggregated_correlations_post) | **POST** /v1/aggregatedCorrelations | Store or Update a Correlation
[**v1_correlations_get**](CorrelationsApi.md#v1_correlations_get) | **GET** /v1/correlations | Get correlations
[**v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get**](CorrelationsApi.md#v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get) | **GET** /v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/causes | Search user correlations for a given cause
[**v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get**](CorrelationsApi.md#v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get) | **GET** /v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/effects | Search user correlations for a given cause
[**v1_public_correlations_search_search_get**](CorrelationsApi.md#v1_public_correlations_search_search_get) | **GET** /v1/public/correlations/search/{search} | Get average correlations for variables containing search term
[**v1_variables_variable_name_causes_get**](CorrelationsApi.md#v1_variables_variable_name_causes_get) | **GET** /v1/variables/{variableName}/causes | Search user correlations for a given effect
[**v1_variables_variable_name_effects_get**](CorrelationsApi.md#v1_variables_variable_name_effects_get) | **GET** /v1/variables/{variableName}/effects | Search user correlations for a given cause
[**v1_variables_variable_name_public_causes_get**](CorrelationsApi.md#v1_variables_variable_name_public_causes_get) | **GET** /v1/variables/{variableName}/public/causes | Search public correlations for a given effect
[**v1_variables_variable_name_public_effects_get**](CorrelationsApi.md#v1_variables_variable_name_public_effects_get) | **GET** /v1/variables/{variableName}/public/effects | Search public correlations for a given cause
[**v1_votes_delete_post**](CorrelationsApi.md#v1_votes_delete_post) | **POST** /v1/votes/delete | Delete vote
[**v1_votes_post**](CorrelationsApi.md#v1_votes_post) | **POST** /v1/votes | Post or update vote


# **v1_aggregated_correlations_get**
> Array&lt;Correlation&gt; v1_aggregated_correlations_get(opts)

Get aggregated correlations

Get correlations based on the anonymized aggregate data from all QuantiModo users.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CorrelationsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  effect: "effect_example", # String | ORIGINAL variable name of the effect variable for which the user desires correlations
  cause: "cause_example", # String | ORIGINAL variable name of the cause variable for which the user desires correlations
  correlation_coefficient: "correlation_coefficient_example", # String | Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action
  onset_delay: "onset_delay_example", # String | The number of seconds which pass following a cause measurement before an effect would likely be observed.
  duration_of_action: "duration_of_action_example", # String | The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.
  last_updated: "last_updated_example", # String | The time that this measurement was last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
  offset: 56, # Integer | Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
  sort: 56 # Integer | Sort by given field. If the field is prefixed with `-, it will sort in descending order.
}

begin
  #Get aggregated correlations
  result = api_instance.v1_aggregated_correlations_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CorrelationsApi->v1_aggregated_correlations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **effect** | **String**| ORIGINAL variable name of the effect variable for which the user desires correlations | [optional] 
 **cause** | **String**| ORIGINAL variable name of the cause variable for which the user desires correlations | [optional] 
 **correlation_coefficient** | **String**| Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action | [optional] 
 **onset_delay** | **String**| The number of seconds which pass following a cause measurement before an effect would likely be observed. | [optional] 
 **duration_of_action** | **String**| The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings. | [optional] 
 **last_updated** | **String**| The time that this measurement was last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot; | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **Integer**| Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. | [optional] 
 **sort** | **Integer**| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**Array&lt;Correlation&gt;**](Correlation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_aggregated_correlations_post**
> v1_aggregated_correlations_post(body, opts)

Store or Update a Correlation

Add correlation

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CorrelationsApi.new

body = SwaggerClient::PostCorrelation.new # PostCorrelation | Provides correlation data

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Store or Update a Correlation
  api_instance.v1_aggregated_correlations_post(body, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CorrelationsApi->v1_aggregated_correlations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostCorrelation**](PostCorrelation.md)| Provides correlation data | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_correlations_get**
> Array&lt;Correlation&gt; v1_correlations_get(opts)

Get correlations

Get correlations.<br>Supported filter parameters:<br><ul><li><b>correlationCoefficient</b> - Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action</li><li><b>onsetDelay</b> - The number of seconds which pass following a cause measurement before an effect would likely be observed.</li><li><b>durationOfAction</b> - The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.</li><li><b>lastUpdated</b> - The time that this measurement was last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul><br>

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CorrelationsApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  effect: "effect_example", # String | ORIGINAL variable name of the effect variable for which the user desires correlations
  cause: "cause_example", # String | ORIGINAL variable name of the cause variable for which the user desires correlations
  correlation_coefficient: "correlation_coefficient_example", # String | Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action
  onset_delay: "onset_delay_example", # String | The number of seconds which pass following a cause measurement before an effect would likely be observed.
  duration_of_action: "duration_of_action_example", # String | The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.
  last_updated: "last_updated_example", # String | The time that this measurement was last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
  offset: 56, # Integer | Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
  sort: 56 # Integer | Sort by given field. If the field is prefixed with `-, it will sort in descending order.
}

begin
  #Get correlations
  result = api_instance.v1_correlations_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CorrelationsApi->v1_correlations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **effect** | **String**| ORIGINAL variable name of the effect variable for which the user desires correlations | [optional] 
 **cause** | **String**| ORIGINAL variable name of the cause variable for which the user desires correlations | [optional] 
 **correlation_coefficient** | **String**| Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action | [optional] 
 **onset_delay** | **String**| The number of seconds which pass following a cause measurement before an effect would likely be observed. | [optional] 
 **duration_of_action** | **String**| The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings. | [optional] 
 **last_updated** | **String**| The time that this measurement was last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot; | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **Integer**| Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. | [optional] 
 **sort** | **Integer**| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**Array&lt;Correlation&gt;**](Correlation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get**
> Array&lt;Correlation&gt; v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get(organization_id, user_id, variable_name, organization_token, opts)

Search user correlations for a given cause

Returns average of all correlations and votes for all user cause variables for a given cause. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CorrelationsApi.new

organization_id = 56 # Integer | Organization ID

user_id = 56 # Integer | User id

variable_name = "variable_name_example" # String | Effect variable name

organization_token = "organization_token_example" # String | Organization access token

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  include_public: "include_public_example" # String | Include public correlations, Can be \"1\" or empty.
}

begin
  #Search user correlations for a given cause
  result = api_instance.v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get(organization_id, user_id, variable_name, organization_token, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CorrelationsApi->v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **Integer**| Organization ID | 
 **user_id** | **Integer**| User id | 
 **variable_name** | **String**| Effect variable name | 
 **organization_token** | **String**| Organization access token | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **include_public** | **String**| Include public correlations, Can be \&quot;1\&quot; or empty. | [optional] 

### Return type

[**Array&lt;Correlation&gt;**](Correlation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get**
> Array&lt;CommonResponse&gt; v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get(organization_id, user_id, variable_name, organization_token, opts)

Search user correlations for a given cause

Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CorrelationsApi.new

organization_id = 56 # Integer | Organization ID

user_id = 56 # Integer | User id

variable_name = "variable_name_example" # String | Cause variable name

organization_token = "organization_token_example" # String | Organization access token

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  include_public: "include_public_example" # String | Include public correlations, Can be \"1\" or empty.
}

begin
  #Search user correlations for a given cause
  result = api_instance.v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get(organization_id, user_id, variable_name, organization_token, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CorrelationsApi->v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **Integer**| Organization ID | 
 **user_id** | **Integer**| User id | 
 **variable_name** | **String**| Cause variable name | 
 **organization_token** | **String**| Organization access token | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **include_public** | **String**| Include public correlations, Can be \&quot;1\&quot; or empty. | [optional] 

### Return type

[**Array&lt;CommonResponse&gt;**](CommonResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_public_correlations_search_search_get**
> Array&lt;Correlation&gt; v1_public_correlations_search_search_get(search, effect_or_cause, opts)

Get average correlations for variables containing search term

Returns the average correlations from all users for all public variables that contain the characters in the search query. Returns average of all users public variable correlations with a specified cause or effect.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CorrelationsApi.new

search = "search_example" # String | Name of the variable that you want to know the causes or effects of.

effect_or_cause = "effect_or_cause_example" # String | Setting this to effect indicates that the searched variable is the effect and that the causes of this variable should be returned.  cause indicates that the searched variable is the cause and the effects should be returned.

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Get average correlations for variables containing search term
  result = api_instance.v1_public_correlations_search_search_get(search, effect_or_cause, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CorrelationsApi->v1_public_correlations_search_search_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| Name of the variable that you want to know the causes or effects of. | 
 **effect_or_cause** | **String**| Setting this to effect indicates that the searched variable is the effect and that the causes of this variable should be returned.  cause indicates that the searched variable is the cause and the effects should be returned. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

[**Array&lt;Correlation&gt;**](Correlation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_variables_variable_name_causes_get**
> Array&lt;Correlation&gt; v1_variables_variable_name_causes_get(variable_name)

Search user correlations for a given effect

Returns average of all correlations and votes for all user cause variables for a given effect

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CorrelationsApi.new

variable_name = "variable_name_example" # String | Effect variable name


begin
  #Search user correlations for a given effect
  result = api_instance.v1_variables_variable_name_causes_get(variable_name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CorrelationsApi->v1_variables_variable_name_causes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variable_name** | **String**| Effect variable name | 

### Return type

[**Array&lt;Correlation&gt;**](Correlation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_variables_variable_name_effects_get**
> Array&lt;Correlation&gt; v1_variables_variable_name_effects_get(variable_name, opts)

Search user correlations for a given cause

Returns average of all correlations and votes for all user effect variables for a given cause

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CorrelationsApi.new

variable_name = "variable_name_example" # String | Cause variable name

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Search user correlations for a given cause
  result = api_instance.v1_variables_variable_name_effects_get(variable_name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CorrelationsApi->v1_variables_variable_name_effects_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variable_name** | **String**| Cause variable name | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

[**Array&lt;Correlation&gt;**](Correlation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_variables_variable_name_public_causes_get**
> Array&lt;Correlation&gt; v1_variables_variable_name_public_causes_get(variable_name, opts)

Search public correlations for a given effect

Returns average of all correlations and votes for all public cause variables for a given effect

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CorrelationsApi.new

variable_name = "variable_name_example" # String | Effect variable name

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Search public correlations for a given effect
  result = api_instance.v1_variables_variable_name_public_causes_get(variable_name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CorrelationsApi->v1_variables_variable_name_public_causes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variable_name** | **String**| Effect variable name | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

[**Array&lt;Correlation&gt;**](Correlation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_variables_variable_name_public_effects_get**
> Array&lt;Correlation&gt; v1_variables_variable_name_public_effects_get(variable_name, opts)

Search public correlations for a given cause

Returns average of all correlations and votes for all public cause variables for a given cause

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CorrelationsApi.new

variable_name = "variable_name_example" # String | Cause variable name

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Search public correlations for a given cause
  result = api_instance.v1_variables_variable_name_public_effects_get(variable_name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CorrelationsApi->v1_variables_variable_name_public_effects_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variable_name** | **String**| Cause variable name | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

[**Array&lt;Correlation&gt;**](Correlation.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_votes_delete_post**
> CommonResponse v1_votes_delete_post(body, opts)

Delete vote

Delete previously posted vote

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CorrelationsApi.new

body = SwaggerClient::VoteDelete.new # VoteDelete | The cause and effect variable names for the predictor vote to be deleted.

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Delete vote
  result = api_instance.v1_votes_delete_post(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CorrelationsApi->v1_votes_delete_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VoteDelete**](VoteDelete.md)| The cause and effect variable names for the predictor vote to be deleted. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_votes_post**
> CommonResponse v1_votes_post(body, opts)

Post or update vote

This is to enable users to indicate their opinion on the plausibility of a causal relationship between a treatment and outcome. QuantiModo incorporates crowd-sourced plausibility estimations into their algorithm. This is done allowing user to indicate their view of the plausibility of each relationship with thumbs up/down buttons placed next to each prediction.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::CorrelationsApi.new

body = SwaggerClient::PostVote.new # PostVote | Contains the cause variable, effect variable, and vote value.

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Post or update vote
  result = api_instance.v1_votes_post(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CorrelationsApi->v1_votes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostVote**](PostVote.md)| Contains the cause variable, effect variable, and vote value. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



