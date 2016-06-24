# SwaggerClient::ConnectorsApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_connect_js_get**](ConnectorsApi.md#v1_connect_js_get) | **GET** /v1/connect.js | Get embeddable connect javascript
[**v1_connect_mobile_get**](ConnectorsApi.md#v1_connect_mobile_get) | **GET** /v1/connect/mobile | Mobile connect page
[**v1_connectors_connector_connect_get**](ConnectorsApi.md#v1_connectors_connector_connect_get) | **GET** /v1/connectors/{connector}/connect | Obtain a token from 3rd party data source
[**v1_connectors_connector_connect_instructions_get**](ConnectorsApi.md#v1_connectors_connector_connect_instructions_get) | **GET** /v1/connectors/{connector}/connectInstructions | Connection Instructions
[**v1_connectors_connector_connect_parameter_get**](ConnectorsApi.md#v1_connectors_connector_connect_parameter_get) | **GET** /v1/connectors/{connector}/connectParameter | Connect Parameter
[**v1_connectors_connector_disconnect_get**](ConnectorsApi.md#v1_connectors_connector_disconnect_get) | **GET** /v1/connectors/{connector}/disconnect | Delete stored connection info
[**v1_connectors_connector_info_get**](ConnectorsApi.md#v1_connectors_connector_info_get) | **GET** /v1/connectors/{connector}/info | Get connector info for user
[**v1_connectors_connector_update_get**](ConnectorsApi.md#v1_connectors_connector_update_get) | **GET** /v1/connectors/{connector}/update | Sync with data source
[**v1_connectors_list_get**](ConnectorsApi.md#v1_connectors_list_get) | **GET** /v1/connectors/list | List of Connectors


# **v1_connect_js_get**
> v1_connect_js_get(opts)

Get embeddable connect javascript

Get embeddable connect javascript. Usage:    - Embedding in applications with popups for 3rd-party authentication windows.      Use `qmSetupInPopup` function after connecting `connect.js`.    - Embedding in applications with popups for 3rd-party authentication windows.      Requires a selector to block. It will be embedded in this block.      Use `qmSetupOnPage` function after connecting `connect.js`.    - Embedding in mobile applications without popups for 3rd-party authentication.      Use `qmSetupOnMobile` function after connecting `connect.js`.      if using the MoodiModo Clones, Use `qmSetupOnIonic` function after connecting `connect.js`. 

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

api_instance = SwaggerClient::ConnectorsApi.new

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Get embeddable connect javascript
  api_instance.v1_connect_js_get(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connect_js_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [internalApiKey](../README.md#internalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/x-javascript



# **v1_connect_mobile_get**
> v1_connect_mobile_get(access_token)

Mobile connect page

This page is designed to be opened in a webview.  Instead of using popup authentication boxes, it uses redirection. You can include the user's access_token as a URL parameter like https://app.quantimo.do/api/v1/connect/mobile?access_token=123

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

api_instance = SwaggerClient::ConnectorsApi.new

access_token = "access_token_example" # String | User OAuth access token


begin
  #Mobile connect page
  api_instance.v1_connect_mobile_get(access_token)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connect_mobile_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User OAuth access token | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [internalApiKey](../README.md#internalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html



# **v1_connectors_connector_connect_get**
> v1_connectors_connector_connect_get(connector, opts)

Obtain a token from 3rd party data source

Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ConnectorsApi.new

connector = "connector_example" # String | Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Obtain a token from 3rd party data source
  api_instance.v1_connectors_connector_connect_get(connector, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_connector_connect_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector** | **String**| Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_connectors_connector_connect_instructions_get**
> v1_connectors_connector_connect_instructions_get(connector, parameters, url, use_popup, opts)

Connection Instructions

Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ConnectorsApi.new

connector = "connector_example" # String | Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.

parameters = "parameters_example" # String | JSON Array of Parameters for the request to enable connector.

url = "url_example" # String | URL which should be used to enable the connector.

use_popup = true # BOOLEAN | Should use popup when enabling connector

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Connection Instructions
  api_instance.v1_connectors_connector_connect_instructions_get(connector, parameters, url, use_popup, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_connector_connect_instructions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector** | **String**| Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint. | 
 **parameters** | **String**| JSON Array of Parameters for the request to enable connector. | 
 **url** | **String**| URL which should be used to enable the connector. | 
 **use_popup** | **BOOLEAN**| Should use popup when enabling connector | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_connectors_connector_connect_parameter_get**
> ConnectorInstruction v1_connectors_connector_connect_parameter_get(connector, display_name, key, placeholder, type, use_popup, opts)

Connect Parameter

Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ConnectorsApi.new

connector = "connector_example" # String | Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.

display_name = "display_name_example" # String | Name of the parameter that is user visible in the form

key = "key_example" # String | Name of the property that the user has to enter such as username or password Connector (used in HTTP request)

placeholder = "placeholder_example" # String | Placeholder hint value for the parameter input tag.

type = "type_example" # String | Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp

use_popup = true # BOOLEAN | Should use popup when enabling connector

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  default_value: "default_value_example" # String | Default parameter value
}

begin
  #Connect Parameter
  result = api_instance.v1_connectors_connector_connect_parameter_get(connector, display_name, key, placeholder, type, use_popup, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_connector_connect_parameter_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector** | **String**| Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint. | 
 **display_name** | **String**| Name of the parameter that is user visible in the form | 
 **key** | **String**| Name of the property that the user has to enter such as username or password Connector (used in HTTP request) | 
 **placeholder** | **String**| Placeholder hint value for the parameter input tag. | 
 **type** | **String**| Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp | 
 **use_popup** | **BOOLEAN**| Should use popup when enabling connector | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **default_value** | **String**| Default parameter value | [optional] 

### Return type

[**ConnectorInstruction**](ConnectorInstruction.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_connectors_connector_disconnect_get**
> v1_connectors_connector_disconnect_get(connector)

Delete stored connection info

The disconnect method deletes any stored tokens or connection information from the connectors database.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ConnectorsApi.new

connector = "connector_example" # String | Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.


begin
  #Delete stored connection info
  api_instance.v1_connectors_connector_disconnect_get(connector)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_connector_disconnect_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector** | **String**| Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint. | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_connectors_connector_info_get**
> ConnectorInfo v1_connectors_connector_info_get(connector, opts)

Get connector info for user

Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ConnectorsApi.new

connector = "connector_example" # String | Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Get connector info for user
  result = api_instance.v1_connectors_connector_info_get(connector, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_connector_info_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector** | **String**| Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint. | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

[**ConnectorInfo**](ConnectorInfo.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_connectors_connector_update_get**
> v1_connectors_connector_update_get(connector, opts)

Sync with data source

The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ConnectorsApi.new

connector = "connector_example" # String | Lowercase system name of the source application or device

opts = { 
  access_token: "access_token_example" # String | User's OAuth2 access token
}

begin
  #Sync with data source
  api_instance.v1_connectors_connector_update_get(connector, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConnectorsApi->v1_connectors_connector_update_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector** | **String**| Lowercase system name of the source application or device | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

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
  # Configure OAuth2 access token for authorization: oauth2
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

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



