# SwaggerClient::UserApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_organizations_organization_id_users_post**](UserApi.md#v1_organizations_organization_id_users_post) | **POST** /v1/organizations/{organizationId}/users | Get user tokens for existing users, create new users
[**v1_user_me_get**](UserApi.md#v1_user_me_get) | **GET** /v1/user/me | Get all available units for variableGet authenticated user


# **v1_organizations_organization_id_users_post**
> UserTokenSuccessfulResponse v1_organizations_organization_id_users_post(organization_id, body, opts)

Get user tokens for existing users, create new users

Get user tokens for existing users, create new users

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UserApi.new

organization_id = 56 # Integer | Organization ID

body = SwaggerClient::UserTokenRequest.new # UserTokenRequest | Provides organization token and user ID

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Get user tokens for existing users, create new users
  result = api_instance.v1_organizations_organization_id_users_post(organization_id, body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserApi->v1_organizations_organization_id_users_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **Integer**| Organization ID | 
 **body** | [**UserTokenRequest**](UserTokenRequest.md)| Provides organization token and user ID | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

[**UserTokenSuccessfulResponse**](UserTokenSuccessfulResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_user_me_get**
> User v1_user_me_get

Get all available units for variableGet authenticated user

Returns user info for the currently authenticated user.

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

api_instance = SwaggerClient::UserApi.new

begin
  #Get all available units for variableGet authenticated user
  result = api_instance.v1_user_me_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UserApi->v1_user_me_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



