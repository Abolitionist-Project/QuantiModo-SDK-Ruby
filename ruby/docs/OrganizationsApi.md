# SwaggerClient::OrganizationsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_organizations_organization_id_users_post**](OrganizationsApi.md#v1_organizations_organization_id_users_post) | **POST** /v1/organizations/{organizationId}/users | Get user tokens for existing users, create new users


# **v1_organizations_organization_id_users_post**
> UserTokenSuccessfulResponse v1_organizations_organization_id_users_post(organization_id, body, opts)

Get user tokens for existing users, create new users

Get user tokens for existing users, create new users

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrganizationsApi.new

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
  puts "Exception when calling OrganizationsApi->v1_organizations_organization_id_users_post: #{e}"
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



