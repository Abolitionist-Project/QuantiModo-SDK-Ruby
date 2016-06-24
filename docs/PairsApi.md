# SwaggerClient::PairsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_pairs_csv_get**](PairsApi.md#v1_pairs_csv_get) | **GET** /v1/pairsCsv | Get pairs
[**v1_pairs_get**](PairsApi.md#v1_pairs_get) | **GET** /v1/pairs | Get pairs


# **v1_pairs_csv_get**
> Array&lt;Pairs&gt; v1_pairs_csv_get(cause, effect, opts)

Get pairs

Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PairsApi.new

cause = "cause_example" # String | Original variable name for the explanatory or independent variable

effect = "effect_example" # String | Original variable name for the outcome or dependent variable

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  cause_source: "cause_source_example", # String | Name of data source that the cause measurements should come from
  cause_unit: "cause_unit_example", # String | Abbreviated name for the unit cause measurements to be returned in
  delay: "delay_example", # String | Delay before onset of action (in seconds) from the cause variable settings.
  duration: "duration_example", # String | Duration of action (in seconds) from the cause variable settings.
  effect_source: "effect_source_example", # String | Name of data source that the effectmeasurements should come from
  effect_unit: "effect_unit_example", # String | Abbreviated name for the unit effect measurements to be returned in
  end_time: "end_time_example", # String | The most recent date (in epoch time) for which we should return measurements
  start_time: "start_time_example", # String | The earliest date (in epoch time) for which we should return measurements
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
  offset: 56, # Integer | Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
  sort: 56 # Integer | Sort by given field. If the field is prefixed with `-, it will sort in descending order.
}

begin
  #Get pairs
  result = api_instance.v1_pairs_csv_get(cause, effect, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PairsApi->v1_pairs_csv_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cause** | **String**| Original variable name for the explanatory or independent variable | 
 **effect** | **String**| Original variable name for the outcome or dependent variable | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **cause_source** | **String**| Name of data source that the cause measurements should come from | [optional] 
 **cause_unit** | **String**| Abbreviated name for the unit cause measurements to be returned in | [optional] 
 **delay** | **String**| Delay before onset of action (in seconds) from the cause variable settings. | [optional] 
 **duration** | **String**| Duration of action (in seconds) from the cause variable settings. | [optional] 
 **effect_source** | **String**| Name of data source that the effectmeasurements should come from | [optional] 
 **effect_unit** | **String**| Abbreviated name for the unit effect measurements to be returned in | [optional] 
 **end_time** | **String**| The most recent date (in epoch time) for which we should return measurements | [optional] 
 **start_time** | **String**| The earliest date (in epoch time) for which we should return measurements | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **Integer**| Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. | [optional] 
 **sort** | **Integer**| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**Array&lt;Pairs&gt;**](Pairs.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_pairs_get**
> Array&lt;Pairs&gt; v1_pairs_get(cause, effect, opts)

Get pairs

Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PairsApi.new

cause = "cause_example" # String | Original variable name for the explanatory or independent variable

effect = "effect_example" # String | Original variable name for the outcome or dependent variable

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  cause_source: "cause_source_example", # String | Name of data source that the cause measurements should come from
  cause_unit: "cause_unit_example", # String | Abbreviated name for the unit cause measurements to be returned in
  delay: "delay_example", # String | Delay before onset of action (in seconds) from the cause variable settings.
  duration: "duration_example", # String | Duration of action (in seconds) from the cause variable settings.
  effect_source: "effect_source_example", # String | Name of data source that the effectmeasurements should come from
  effect_unit: "effect_unit_example", # String | Abbreviated name for the unit effect measurements to be returned in
  end_time: "end_time_example", # String | The most recent date (in epoch time) for which we should return measurements
  start_time: "start_time_example", # String | The earliest date (in epoch time) for which we should return measurements
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
  offset: 56, # Integer | Now suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.
  sort: 56 # Integer | Sort by given field. If the field is prefixed with `-, it will sort in descending order.
}

begin
  #Get pairs
  result = api_instance.v1_pairs_get(cause, effect, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PairsApi->v1_pairs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cause** | **String**| Original variable name for the explanatory or independent variable | 
 **effect** | **String**| Original variable name for the outcome or dependent variable | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **cause_source** | **String**| Name of data source that the cause measurements should come from | [optional] 
 **cause_unit** | **String**| Abbreviated name for the unit cause measurements to be returned in | [optional] 
 **delay** | **String**| Delay before onset of action (in seconds) from the cause variable settings. | [optional] 
 **duration** | **String**| Duration of action (in seconds) from the cause variable settings. | [optional] 
 **effect_source** | **String**| Name of data source that the effectmeasurements should come from | [optional] 
 **effect_unit** | **String**| Abbreviated name for the unit effect measurements to be returned in | [optional] 
 **end_time** | **String**| The most recent date (in epoch time) for which we should return measurements | [optional] 
 **start_time** | **String**| The earliest date (in epoch time) for which we should return measurements | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. | [optional] 
 **offset** | **Integer**| Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. | [optional] 
 **sort** | **Integer**| Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order. | [optional] 

### Return type

[**Array&lt;Pairs&gt;**](Pairs.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



