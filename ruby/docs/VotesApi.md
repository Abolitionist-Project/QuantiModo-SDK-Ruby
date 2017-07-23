# SwaggerClient::VotesApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_votes_delete_post**](VotesApi.md#v1_votes_delete_post) | **POST** /v1/votes/delete | Delete vote
[**v1_votes_post**](VotesApi.md#v1_votes_post) | **POST** /v1/votes | Post or update vote


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
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::VotesApi.new

body = SwaggerClient::VoteDelete.new # VoteDelete | The cause and effect variable names for the predictor vote to be deleted.

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Delete vote
  result = api_instance.v1_votes_delete_post(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VotesApi->v1_votes_delete_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VoteDelete**](VoteDelete.md)| The cause and effect variable names for the predictor vote to be deleted. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

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
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::VotesApi.new

body = SwaggerClient::PostVote.new # PostVote | Contains the cause variable, effect variable, and vote value.

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Post or update vote
  result = api_instance.v1_votes_post(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling VotesApi->v1_votes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostVote**](PostVote.md)| Contains the cause variable, effect variable, and vote value. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



