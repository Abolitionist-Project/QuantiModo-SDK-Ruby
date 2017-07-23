# SwaggerClient::TagsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_user_tags_delete_post**](TagsApi.md#v1_user_tags_delete_post) | **POST** /v1/userTags/delete | Delete user tag or ingredient
[**v1_user_tags_post**](TagsApi.md#v1_user_tags_post) | **POST** /v1/userTags | Post or update user tags or ingredients


# **v1_user_tags_delete_post**
> CommonResponse v1_user_tags_delete_post(tagged_variable_id, tag_variable_id)

Delete user tag or ingredient

Delete previously created user tags or ingredients.

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

api_instance = SwaggerClient::TagsApi.new

tagged_variable_id = 56 # Integer | This is the id of the variable being tagged with an ingredient or something.

tag_variable_id = 56 # Integer | This is the id of the ingredient variable whose value is determined based on the value of the tagged variable.


begin
  #Delete user tag or ingredient
  result = api_instance.v1_user_tags_delete_post(tagged_variable_id, tag_variable_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagsApi->v1_user_tags_delete_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tagged_variable_id** | **Integer**| This is the id of the variable being tagged with an ingredient or something. | 
 **tag_variable_id** | **Integer**| This is the id of the ingredient variable whose value is determined based on the value of the tagged variable. | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_user_tags_post**
> CommonResponse v1_user_tags_post(body, opts)

Post or update user tags or ingredients

This endpoint allows users to tag foods with their ingredients.  This information will then be used to infer the user intake of the different ingredients by just entering the foods. The inferred intake levels will then be used to determine the effects of different nutrients on the user during analysis.

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

api_instance = SwaggerClient::TagsApi.new

body = SwaggerClient::UserTag.new # UserTag | Contains the new user tag data

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Post or update user tags or ingredients
  result = api_instance.v1_user_tags_post(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagsApi->v1_user_tags_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserTag**](UserTag.md)| Contains the new user tag data | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



