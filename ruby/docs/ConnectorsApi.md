# SwaggerClient::ConnectorsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_connect_mobile_get**](ConnectorsApi.md#v1_connect_mobile_get) | **GET** /v1/connect/mobile | Mobile connect page
[**v1_connectors_connector_name_connect_get**](ConnectorsApi.md#v1_connectors_connector_name_connect_get) | **GET** /v1/connectors/{connectorName}/connect | Obtain a token from 3rd party data source
[**v1_connectors_connector_name_connect_instructions_get**](ConnectorsApi.md#v1_connectors_connector_name_connect_instructions_get) | **GET** /v1/connectors/{connectorName}/connectInstructions | Connection Instructions
[**v1_connectors_connector_name_connect_parameter_get**](ConnectorsApi.md#v1_connectors_connector_name_connect_parameter_get) | **GET** /v1/connectors/{connectorName}/connectParameter | Connect Parameter
[**v1_connectors_connector_name_disconnect_get**](ConnectorsApi.md#v1_connectors_connector_name_disconnect_get) | **GET** /v1/connectors/{connectorName}/disconnect | Delete stored connection info
[**v1_connectors_connector_name_info_get**](ConnectorsApi.md#v1_connectors_connector_name_info_get) | **GET** /v1/connectors/{connectorName}/info | Get connector info for user
[**v1_connectors_connector_name_update_get**](ConnectorsApi.md#v1_connectors_connector_name_update_get) | **GET** /v1/connectors/{connectorName}/update | Sync with data source
[**v1_connectors_list_get**](ConnectorsApi.md#v1_connectors_list_get) | **GET** /v1/connectors/list | List of Connectors
[**v1_integration_js_get**](ConnectorsApi.md#v1_integration_js_get) | **GET** /v1/integration.js | Get embeddable connect javascript


# **v1_connect_mobile_get**
> v1_connect_mobile_get(access_token, opts)

Mobile connect page

This page is designed to be opened in a webview.  Instead of using popup authentication boxes, it uses redirection. You can include the user's access_token as a URL parameter like https://app.quantimo.do/api/v1/connect/mobile?access_token=123

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConnectorsApi.new

access_token = "access_token_example" # String | User OAuth access token

opts = { 
  user_id: 56 # Integer | User's id
}

begin
  #Mobile connect page
  api_instance.v1_connect_mobile_get(access_token, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connect_mobile_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User OAuth access token | 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html



# **v1_connectors_connector_name_connect_get**
> v1_connectors_connector_name_connect_get(connector_name, opts)

Obtain a token from 3rd party data source

Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.

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

api_instance = SwaggerClient::ConnectorsApi.new

connector_name = "connector_name_example" # String | Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint.

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Obtain a token from 3rd party data source
  api_instance.v1_connectors_connector_name_connect_get(connector_name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_connector_name_connect_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector_name** | **String**| Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

nil (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_connectors_connector_name_connect_instructions_get**
> v1_connectors_connector_name_connect_instructions_get(connector_name, parameters, url, use_popup, opts)

Connection Instructions

Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.

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

api_instance = SwaggerClient::ConnectorsApi.new

connector_name = "connector_name_example" # String | Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint.

parameters = "parameters_example" # String | JSON Array of Parameters for the request to enable connector.

url = "url_example" # String | URL which should be used to enable the connector.

use_popup = true # BOOLEAN | Should use popup when enabling connector

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Connection Instructions
  api_instance.v1_connectors_connector_name_connect_instructions_get(connector_name, parameters, url, use_popup, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_connector_name_connect_instructions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector_name** | **String**| Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. | 
 **parameters** | **String**| JSON Array of Parameters for the request to enable connector. | 
 **url** | **String**| URL which should be used to enable the connector. | 
 **use_popup** | **BOOLEAN**| Should use popup when enabling connector | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

nil (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_connectors_connector_name_connect_parameter_get**
> ConnectorInstruction v1_connectors_connector_name_connect_parameter_get(connector_name, display_name, key, placeholder, type, use_popup, opts)

Connect Parameter

Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.

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

api_instance = SwaggerClient::ConnectorsApi.new

connector_name = "connector_name_example" # String | Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint.

display_name = "display_name_example" # String | Name of the parameter that is user visible in the form

key = "key_example" # String | Name of the property that the user has to enter such as username or password Connector (used in HTTP request)

placeholder = "placeholder_example" # String | Placeholder hint value for the parameter input tag.

type = "type_example" # String | Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp

use_popup = true # BOOLEAN | Should use popup when enabling connector

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56, # Integer | User's id
  default_value: "default_value_example" # String | Default parameter value
}

begin
  #Connect Parameter
  result = api_instance.v1_connectors_connector_name_connect_parameter_get(connector_name, display_name, key, placeholder, type, use_popup, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_connector_name_connect_parameter_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector_name** | **String**| Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. | 
 **display_name** | **String**| Name of the parameter that is user visible in the form | 
 **key** | **String**| Name of the property that the user has to enter such as username or password Connector (used in HTTP request) | 
 **placeholder** | **String**| Placeholder hint value for the parameter input tag. | 
 **type** | **String**| Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp | 
 **use_popup** | **BOOLEAN**| Should use popup when enabling connector | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 
 **default_value** | **String**| Default parameter value | [optional] 

### Return type

[**ConnectorInstruction**](ConnectorInstruction.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_connectors_connector_name_disconnect_get**
> v1_connectors_connector_name_disconnect_get(connector_name)

Delete stored connection info

The disconnect method deletes any stored tokens or connection information from the connectors database.

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

api_instance = SwaggerClient::ConnectorsApi.new

connector_name = "connector_name_example" # String | Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint.


begin
  #Delete stored connection info
  api_instance.v1_connectors_connector_name_disconnect_get(connector_name)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_connector_name_disconnect_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector_name** | **String**| Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. | 

### Return type

nil (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_connectors_connector_name_info_get**
> ConnectorInfo v1_connectors_connector_name_info_get(connector_name, opts)

Get connector info for user

Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.

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

api_instance = SwaggerClient::ConnectorsApi.new

connector_name = "connector_name_example" # String | Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint.

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Get connector info for user
  result = api_instance.v1_connectors_connector_name_info_get(connector_name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_connector_name_info_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector_name** | **String**| Lowercase system name of the source application or device. Get a list of available connectors from the /v1/connectors/list endpoint. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

[**ConnectorInfo**](ConnectorInfo.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_connectors_connector_name_update_get**
> v1_connectors_connector_name_update_get(connector_name, opts)

Sync with data source

The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.

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

api_instance = SwaggerClient::ConnectorsApi.new

connector_name = "connector_name_example" # String | Lowercase system name of the source application or device

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Sync with data source
  api_instance.v1_connectors_connector_name_update_get(connector_name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_connector_name_update_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector_name** | **String**| Lowercase system name of the source application or device | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

nil (empty response body)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_connectors_list_get**
> Array&lt;Connector&gt; v1_connectors_list_get

List of Connectors

A connector pulls data from other data providers using their API or a screenscraper. Returns a list of all available connectors and information about them such as their id, name, whether the user has provided access, logo url, connection instructions, and the update history.

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

api_instance = SwaggerClient::ConnectorsApi.new

begin
  #List of Connectors
  result = api_instance.v1_connectors_list_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_list_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Connector&gt;**](Connector.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_integration_js_get**
> v1_integration_js_get(opts)

Get embeddable connect javascript

Get embeddable connect javascript. Usage:   - Embedding in applications with popups for 3rd-party authentication windows.     Use `qmSetupInPopup` function after connecting `connect.js`.   - Embedding in applications with popups for 3rd-party authentication windows.     Requires a selector to block. It will be embedded in this block.     Use `qmSetupOnPage` function after connecting `connect.js`.   - Embedding in mobile applications without popups for 3rd-party authentication.     Use `qmSetupOnMobile` function after connecting `connect.js`.     If using in a Cordova application call  `qmSetupOnIonic` function after connecting `connect.js`.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConnectorsApi.new

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Get embeddable connect javascript
  api_instance.v1_integration_js_get(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_integration_js_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/x-javascript



