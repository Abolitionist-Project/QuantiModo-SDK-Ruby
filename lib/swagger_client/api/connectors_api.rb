=begin
QuantiModo

Welcome to QuantiModo API! QuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications. [Learn about QuantiModo](https://quantimo.do) or contact us at <api@quantimo.do>.         Before you get started, you will need to: * Sign in/Sign up, and add some data at [https://app.quantimo.do/api/v2/account/connectors](https://app.quantimo.do/api/v2/account/connectors) to try out the API for yourself * Create an app to get your client id and secret at [https://app.quantimo.do/api/v2/apps](https://app.quantimo.do/api/v2/apps) * As long as you're signed in, it will use your browser's cookie for authentication.  However, client applications must use OAuth2 tokens to access the API.     ## Application Endpoints These endpoints give you access to all authorized users' data for that application. ### Getting Application Token Make a `POST` request to `/api/v2/oauth/access_token`         * `grant_type` Must be `client_credentials`.         * `clientId` Your application's clientId.         * `client_secret` Your application's client_secret.         * `redirect_uri` Your application's redirect url.                ## Example Queries ### Query Options The standard query options for QuantiModo API are as described in the table below. These are the available query options in QuantiModo API: <table>            <thead>                <tr>                    <th>Parameter</th>                    <th>Description</th>                </tr>            </thead>            <tbody>                <tr>                    <td>limit</td>                    <td>The LIMIT is used to limit the number of results returned.  So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.</td>                </tr>                <tr>                    <td>offset</td>                    <td>Suppose you wanted to show results 11-20. You'd set the    offset to 10 and the limit to 10.</td>                </tr>                <tr>                    <td>sort</td>                    <td>Sort by given field. If the field is prefixed with '-', it    will sort in descending order.</td>                </tr>            </tbody>        </table>         ### Pagination Conventions Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters,         `/v2/variables?limit=20&offset=60`         Generally, you'll be retrieving new or updated user data. To avoid unnecessary API calls, you'll want to store your last refresh time locally.  Initially, it should be set to 0. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append         `?lastUpdated=(ge)&quot2013-01-D01T01:01:01&quot`         to your request.         Also for better pagination, you can get link to the records of first, last, next and previous page from response headers: * `Total-Count` - Total number of results for given query * `Link-First` - Link to get first page records * `Link-Last` - Link to get last page records * `Link-Prev` - Link to get previous records set * `Link-Next` - Link to get next records set         Remember, response header will be only sent when the record set is available. e.g. You will not get a ```Link-Last``` & ```Link-Next``` when you query for the last page.         ### Filter operators support API supports the following operators with filter parameters: <br> **Comparison operators**         Comparison operators allow you to limit results to those greater than, less than, or equal to a specified value for a specified attribute. These operators can be used with strings, numbers, and dates. The following comparison operators are available: * `gt` for `greater than` comparison * `ge` for `greater than or equal` comparison * `lt` for `less than` comparison * `le` for `less than or equal` comparison         They are included in queries using the following format:         `(<operator>)<value>`         For example, in order to filter value which is greater than 21, the following query parameter should be used:         `?value=(gt)21` <br><br> **Equals/In Operators**         It also allows filtering by the exact value of an attribute or by a set of values, depending on the type of value passed as a query parameter. If the value contains commas, the parameter is split on commas and used as array input for `IN` filtering, otherwise the exact match is applied. In order to only show records which have the value 42, the following query should be used:         `?value=42`         In order to filter records which have value 42 or 43, the following query should be used:         `?value=42,43` <br><br> **Like operators**         Like operators allow filtering using `LIKE` query. This operator is triggered if exact match operator is used, but value contains `%` sign as the first or last character. In order to filter records which category that start with `Food`, the following query should be used:         `?category=Food%` <br><br> **Negation operator**         It is possible to get negated results of a query by prefixed the operator with `!`. Some examples:         `//filter records except those with value are not 42 or 43`<br> `?value=!42,43`         `//filter records with value not greater than 21`<br> `?value=!(ge)21` <br><br> **Multiple constraints for single attribute**         It is possible to apply multiple constraints by providing an array of query filters:         Filter all records which value is greater than 20.2 and less than 20.3<br> `?value[]=(gt)20.2&value[]=(lt)20.3`         Filter all records which value is greater than 20.2 and less than 20.3 but not 20.2778<br> `?value[]=(gt)20.2&value[]=(lt)20.3&value[]=!20.2778`<br><br> 

OpenAPI spec version: 2.0.6

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module SwaggerClient
  class ConnectorsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get embeddable connect javascript
    # Get embeddable connect javascript. Usage:    - Embedding in applications with popups for 3rd-party authentication windows.      Use `qmSetupInPopup` function after connecting `connect.js`.    - Embedding in applications with popups for 3rd-party authentication windows.      Requires a selector to block. It will be embedded in this block.      Use `qmSetupOnPage` function after connecting `connect.js`.    - Embedding in mobile applications without popups for 3rd-party authentication.      Use `qmSetupOnMobile` function after connecting `connect.js`.      if using the MoodiModo Clones, Use `qmSetupOnIonic` function after connecting `connect.js`. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [nil]
    def v1_connect_js_get(opts = {})
      v1_connect_js_get_with_http_info(opts)
      return nil
    end

    # Get embeddable connect javascript
    # Get embeddable connect javascript. Usage:    - Embedding in applications with popups for 3rd-party authentication windows.      Use &#x60;qmSetupInPopup&#x60; function after connecting &#x60;connect.js&#x60;.    - Embedding in applications with popups for 3rd-party authentication windows.      Requires a selector to block. It will be embedded in this block.      Use &#x60;qmSetupOnPage&#x60; function after connecting &#x60;connect.js&#x60;.    - Embedding in mobile applications without popups for 3rd-party authentication.      Use &#x60;qmSetupOnMobile&#x60; function after connecting &#x60;connect.js&#x60;.      if using the MoodiModo Clones, Use &#x60;qmSetupOnIonic&#x60; function after connecting &#x60;connect.js&#x60;. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v1_connect_js_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectorsApi.v1_connect_js_get ..."
      end
      # resource path
      local_var_path = "/v1/connect.js".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/x-javascript']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = ['oauth2', 'internalApiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectorsApi#v1_connect_js_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mobile connect page
    # This page is designed to be opened in a webview.  Instead of using popup authentication boxes, it uses redirection. You can include the user's access_token as a URL parameter like https://app.quantimo.do/api/v1/connect/mobile?access_token=123
    # @param access_token User OAuth access token
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_connect_mobile_get(access_token, opts = {})
      v1_connect_mobile_get_with_http_info(access_token, opts)
      return nil
    end

    # Mobile connect page
    # This page is designed to be opened in a webview.  Instead of using popup authentication boxes, it uses redirection. You can include the user&#39;s access_token as a URL parameter like https://app.quantimo.do/api/v1/connect/mobile?access_token&#x3D;123
    # @param access_token User OAuth access token
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v1_connect_mobile_get_with_http_info(access_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectorsApi.v1_connect_mobile_get ..."
      end
      # verify the required parameter 'access_token' is set
      fail ArgumentError, "Missing the required parameter 'access_token' when calling ConnectorsApi.v1_connect_mobile_get" if access_token.nil?
      # resource path
      local_var_path = "/v1/connect/mobile".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = access_token

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['text/html']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = ['oauth2', 'internalApiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectorsApi#v1_connect_mobile_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obtain a token from 3rd party data source
    # Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [nil]
    def v1_connectors_connector_connect_get(connector, opts = {})
      v1_connectors_connector_connect_get_with_http_info(connector, opts)
      return nil
    end

    # Obtain a token from 3rd party data source
    # Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v1_connectors_connector_connect_get_with_http_info(connector, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectorsApi.v1_connectors_connector_connect_get ..."
      end
      # verify the required parameter 'connector' is set
      fail ArgumentError, "Missing the required parameter 'connector' when calling ConnectorsApi.v1_connectors_connector_connect_get" if connector.nil?
      # resource path
      local_var_path = "/v1/connectors/{connector}/connect".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectorsApi#v1_connectors_connector_connect_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Connection Instructions
    # Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param parameters JSON Array of Parameters for the request to enable connector.
    # @param url URL which should be used to enable the connector.
    # @param use_popup Should use popup when enabling connector
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [nil]
    def v1_connectors_connector_connect_instructions_get(connector, parameters, url, use_popup, opts = {})
      v1_connectors_connector_connect_instructions_get_with_http_info(connector, parameters, url, use_popup, opts)
      return nil
    end

    # Connection Instructions
    # Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param parameters JSON Array of Parameters for the request to enable connector.
    # @param url URL which should be used to enable the connector.
    # @param use_popup Should use popup when enabling connector
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v1_connectors_connector_connect_instructions_get_with_http_info(connector, parameters, url, use_popup, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectorsApi.v1_connectors_connector_connect_instructions_get ..."
      end
      # verify the required parameter 'connector' is set
      fail ArgumentError, "Missing the required parameter 'connector' when calling ConnectorsApi.v1_connectors_connector_connect_instructions_get" if connector.nil?
      # verify the required parameter 'parameters' is set
      fail ArgumentError, "Missing the required parameter 'parameters' when calling ConnectorsApi.v1_connectors_connector_connect_instructions_get" if parameters.nil?
      # verify the required parameter 'url' is set
      fail ArgumentError, "Missing the required parameter 'url' when calling ConnectorsApi.v1_connectors_connector_connect_instructions_get" if url.nil?
      # verify the required parameter 'use_popup' is set
      fail ArgumentError, "Missing the required parameter 'use_popup' when calling ConnectorsApi.v1_connectors_connector_connect_instructions_get" if use_popup.nil?
      # resource path
      local_var_path = "/v1/connectors/{connector}/connectInstructions".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}
      query_params[:'parameters'] = parameters
      query_params[:'url'] = url
      query_params[:'usePopup'] = use_popup
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectorsApi#v1_connectors_connector_connect_instructions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Connect Parameter
    # Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param display_name Name of the parameter that is user visible in the form
    # @param key Name of the property that the user has to enter such as username or password Connector (used in HTTP request)
    # @param placeholder Placeholder hint value for the parameter input tag.
    # @param type Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp
    # @param use_popup Should use popup when enabling connector
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :default_value Default parameter value
    # @return [ConnectorInstruction]
    def v1_connectors_connector_connect_parameter_get(connector, display_name, key, placeholder, type, use_popup, opts = {})
      data, _status_code, _headers = v1_connectors_connector_connect_parameter_get_with_http_info(connector, display_name, key, placeholder, type, use_popup, opts)
      return data
    end

    # Connect Parameter
    # Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param display_name Name of the parameter that is user visible in the form
    # @param key Name of the property that the user has to enter such as username or password Connector (used in HTTP request)
    # @param placeholder Placeholder hint value for the parameter input tag.
    # @param type Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp
    # @param use_popup Should use popup when enabling connector
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :default_value Default parameter value
    # @return [Array<(ConnectorInstruction, Fixnum, Hash)>] ConnectorInstruction data, response status code and response headers
    def v1_connectors_connector_connect_parameter_get_with_http_info(connector, display_name, key, placeholder, type, use_popup, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectorsApi.v1_connectors_connector_connect_parameter_get ..."
      end
      # verify the required parameter 'connector' is set
      fail ArgumentError, "Missing the required parameter 'connector' when calling ConnectorsApi.v1_connectors_connector_connect_parameter_get" if connector.nil?
      # verify the required parameter 'display_name' is set
      fail ArgumentError, "Missing the required parameter 'display_name' when calling ConnectorsApi.v1_connectors_connector_connect_parameter_get" if display_name.nil?
      # verify the required parameter 'key' is set
      fail ArgumentError, "Missing the required parameter 'key' when calling ConnectorsApi.v1_connectors_connector_connect_parameter_get" if key.nil?
      # verify the required parameter 'placeholder' is set
      fail ArgumentError, "Missing the required parameter 'placeholder' when calling ConnectorsApi.v1_connectors_connector_connect_parameter_get" if placeholder.nil?
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling ConnectorsApi.v1_connectors_connector_connect_parameter_get" if type.nil?
      # verify the required parameter 'use_popup' is set
      fail ArgumentError, "Missing the required parameter 'use_popup' when calling ConnectorsApi.v1_connectors_connector_connect_parameter_get" if use_popup.nil?
      # resource path
      local_var_path = "/v1/connectors/{connector}/connectParameter".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}
      query_params[:'displayName'] = display_name
      query_params[:'key'] = key
      query_params[:'placeholder'] = placeholder
      query_params[:'type'] = type
      query_params[:'usePopup'] = use_popup
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'defaultValue'] = opts[:'default_value'] if opts[:'default_value']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConnectorInstruction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectorsApi#v1_connectors_connector_connect_parameter_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete stored connection info
    # The disconnect method deletes any stored tokens or connection information from the connectors database.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_connectors_connector_disconnect_get(connector, opts = {})
      v1_connectors_connector_disconnect_get_with_http_info(connector, opts)
      return nil
    end

    # Delete stored connection info
    # The disconnect method deletes any stored tokens or connection information from the connectors database.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v1_connectors_connector_disconnect_get_with_http_info(connector, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectorsApi.v1_connectors_connector_disconnect_get ..."
      end
      # verify the required parameter 'connector' is set
      fail ArgumentError, "Missing the required parameter 'connector' when calling ConnectorsApi.v1_connectors_connector_disconnect_get" if connector.nil?
      # resource path
      local_var_path = "/v1/connectors/{connector}/disconnect".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectorsApi#v1_connectors_connector_disconnect_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connector info for user
    # Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [ConnectorInfo]
    def v1_connectors_connector_info_get(connector, opts = {})
      data, _status_code, _headers = v1_connectors_connector_info_get_with_http_info(connector, opts)
      return data
    end

    # Get connector info for user
    # Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(ConnectorInfo, Fixnum, Hash)>] ConnectorInfo data, response status code and response headers
    def v1_connectors_connector_info_get_with_http_info(connector, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectorsApi.v1_connectors_connector_info_get ..."
      end
      # verify the required parameter 'connector' is set
      fail ArgumentError, "Missing the required parameter 'connector' when calling ConnectorsApi.v1_connectors_connector_info_get" if connector.nil?
      # resource path
      local_var_path = "/v1/connectors/{connector}/info".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConnectorInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectorsApi#v1_connectors_connector_info_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sync with data source
    # The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.
    # @param connector Lowercase system name of the source application or device
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [nil]
    def v1_connectors_connector_update_get(connector, opts = {})
      v1_connectors_connector_update_get_with_http_info(connector, opts)
      return nil
    end

    # Sync with data source
    # The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.
    # @param connector Lowercase system name of the source application or device
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v1_connectors_connector_update_get_with_http_info(connector, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectorsApi.v1_connectors_connector_update_get ..."
      end
      # verify the required parameter 'connector' is set
      fail ArgumentError, "Missing the required parameter 'connector' when calling ConnectorsApi.v1_connectors_connector_update_get" if connector.nil?
      # resource path
      local_var_path = "/v1/connectors/{connector}/update".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectorsApi#v1_connectors_connector_update_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of Connectors
    # A connector pulls data from other data providers using their API or a screenscraper. Returns a list of all available connectors and information about them such as their id, name, whether the user has provided access, logo url, connection instructions, and the update history.
    # @param [Hash] opts the optional parameters
    # @return [Array<Connector>]
    def v1_connectors_list_get(opts = {})
      data, _status_code, _headers = v1_connectors_list_get_with_http_info(opts)
      return data
    end

    # List of Connectors
    # A connector pulls data from other data providers using their API or a screenscraper. Returns a list of all available connectors and information about them such as their id, name, whether the user has provided access, logo url, connection instructions, and the update history.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Connector>, Fixnum, Hash)>] Array<Connector> data, response status code and response headers
    def v1_connectors_list_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectorsApi.v1_connectors_list_get ..."
      end
      # resource path
      local_var_path = "/v1/connectors/list".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Connector>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectorsApi#v1_connectors_list_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
