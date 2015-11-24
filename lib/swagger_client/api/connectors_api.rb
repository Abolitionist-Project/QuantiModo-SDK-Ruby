require "uri"

module SwaggerClient
  class ConnectorsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get embeddable connect javascript
    # Get embeddable connect javascript. Usage:\n\n  - Embedding in applications with popups for 3rd-party authentication\nwindows.\n\n    Use `qmSetupInPopup` function after connecting `connect.js`.\n\n  - Embedding in applications with popups for 3rd-party authentication\nwindows.\n\n    Requires a selector to block. It will be embedded in this block.\n\n    Use `qmSetupOnPage` function after connecting `connect.js`.\n\n  - Embedding in mobile applications without popups for 3rd-party\nauthentication.\n\n    Use `qmSetupOnMobile` function after connecting `connect.js`.\n\n    if using the MoodiModo Clones, Use `qmSetupOnIonic` function after connecting `connect.js`.
    # @param access_token User&#39;s access token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :mashape_key Mashape API key
    # @return [nil]
    def v1_connect_js_get(access_token, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorsApi#v1_connect_js_get ..."
      end
      
      # verify the required parameter 'access_token' is set
      fail "Missing the required parameter 'access_token' when calling v1_connect_js_get" if access_token.nil?
      
      # resource path
      path = "/v1/connect.js".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access token'] = access_token
      query_params[:'mashape key'] = opts[:'mashape_key'] if opts[:'mashape_key']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/x-javascript']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorsApi#v1_connect_js_get"
      end
      return nil
    end

    # Mobile connect page
    # Mobile connect page
    # @param t User token
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_connect_mobile_get(t, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorsApi#v1_connect_mobile_get ..."
      end
      
      # verify the required parameter 't' is set
      fail "Missing the required parameter 't' when calling v1_connect_mobile_get" if t.nil?
      
      # resource path
      path = "/v1/connect/mobile".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'t'] = t

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['text/html']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorsApi#v1_connect_mobile_get"
      end
      return nil
    end

    # List of Connectors
    # A connector pulls data from other data providers using their API or a screenscraper. Returns a list of all available connectors and information about them such as their id, name, whether the user has provided access, logo url, connection instructions, and the update history.
    # @param [Hash] opts the optional parameters
    # @return [Array<Connector>]
    def v1_connectors_list_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorsApi#v1_connectors_list_get ..."
      end
      
      # resource path
      path = "/v1/connectors/list".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Connector>')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorsApi#v1_connectors_list_get. Result: #{result.inspect}"
      end
      return result
    end

    # Obtain a token from 3rd party data source
    # Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_connectors_connector_connect_get(connector, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorsApi#v1_connectors_connector_connect_get ..."
      end
      
      # verify the required parameter 'connector' is set
      fail "Missing the required parameter 'connector' when calling v1_connectors_connector_connect_get" if connector.nil?
      
      # resource path
      path = "/v1/connectors/{connector}/connect".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorsApi#v1_connectors_connector_connect_get"
      end
      return nil
    end

    # Connection Instructions
    # Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param parameters JSON Array of Parameters for the request to enable connector.
    # @param url URL which should be used to enable the connector.
    # @param use_popup Should use popup when enabling connector
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_connectors_connector_connect_instructions_get(connector, parameters, url, use_popup, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorsApi#v1_connectors_connector_connect_instructions_get ..."
      end
      
      # verify the required parameter 'connector' is set
      fail "Missing the required parameter 'connector' when calling v1_connectors_connector_connect_instructions_get" if connector.nil?
      
      # verify the required parameter 'parameters' is set
      fail "Missing the required parameter 'parameters' when calling v1_connectors_connector_connect_instructions_get" if parameters.nil?
      
      # verify the required parameter 'url' is set
      fail "Missing the required parameter 'url' when calling v1_connectors_connector_connect_instructions_get" if url.nil?
      
      # verify the required parameter 'use_popup' is set
      fail "Missing the required parameter 'use_popup' when calling v1_connectors_connector_connect_instructions_get" if use_popup.nil?
      
      # resource path
      path = "/v1/connectors/{connector}/connectInstructions".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}
      query_params[:'parameters'] = parameters
      query_params[:'url'] = url
      query_params[:'usePopup'] = use_popup

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorsApi#v1_connectors_connector_connect_instructions_get"
      end
      return nil
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
    # @option opts [String] :default_value Default parameter value
    # @return [ConnectorInstruction]
    def v1_connectors_connector_connect_parameter_get(connector, display_name, key, placeholder, type, use_popup, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorsApi#v1_connectors_connector_connect_parameter_get ..."
      end
      
      # verify the required parameter 'connector' is set
      fail "Missing the required parameter 'connector' when calling v1_connectors_connector_connect_parameter_get" if connector.nil?
      
      # verify the required parameter 'display_name' is set
      fail "Missing the required parameter 'display_name' when calling v1_connectors_connector_connect_parameter_get" if display_name.nil?
      
      # verify the required parameter 'key' is set
      fail "Missing the required parameter 'key' when calling v1_connectors_connector_connect_parameter_get" if key.nil?
      
      # verify the required parameter 'placeholder' is set
      fail "Missing the required parameter 'placeholder' when calling v1_connectors_connector_connect_parameter_get" if placeholder.nil?
      
      # verify the required parameter 'type' is set
      fail "Missing the required parameter 'type' when calling v1_connectors_connector_connect_parameter_get" if type.nil?
      
      # verify the required parameter 'use_popup' is set
      fail "Missing the required parameter 'use_popup' when calling v1_connectors_connector_connect_parameter_get" if use_popup.nil?
      
      # resource path
      path = "/v1/connectors/{connector}/connectParameter".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}
      query_params[:'displayName'] = display_name
      query_params[:'key'] = key
      query_params[:'placeholder'] = placeholder
      query_params[:'type'] = type
      query_params[:'usePopup'] = use_popup
      query_params[:'defaultValue'] = opts[:'default_value'] if opts[:'default_value']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConnectorInstruction')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorsApi#v1_connectors_connector_connect_parameter_get. Result: #{result.inspect}"
      end
      return result
    end

    # Delete stored connection info
    # The disconnect method deletes any stored tokens or connection information from the connectors database.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_connectors_connector_disconnect_get(connector, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorsApi#v1_connectors_connector_disconnect_get ..."
      end
      
      # verify the required parameter 'connector' is set
      fail "Missing the required parameter 'connector' when calling v1_connectors_connector_disconnect_get" if connector.nil?
      
      # resource path
      path = "/v1/connectors/{connector}/disconnect".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorsApi#v1_connectors_connector_disconnect_get"
      end
      return nil
    end

    # Get connector info for user
    # Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @return [ConnectorInfo]
    def v1_connectors_connector_info_get(connector, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorsApi#v1_connectors_connector_info_get ..."
      end
      
      # verify the required parameter 'connector' is set
      fail "Missing the required parameter 'connector' when calling v1_connectors_connector_info_get" if connector.nil?
      
      # resource path
      path = "/v1/connectors/{connector}/info".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConnectorInfo')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorsApi#v1_connectors_connector_info_get. Result: #{result.inspect}"
      end
      return result
    end

    # Sync with data source
    # The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.
    # @param connector Lowercase system name of the source application or device
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_connectors_connector_update_get(connector, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorsApi#v1_connectors_connector_update_get ..."
      end
      
      # verify the required parameter 'connector' is set
      fail "Missing the required parameter 'connector' when calling v1_connectors_connector_update_get" if connector.nil?
      
      # resource path
      path = "/v1/connectors/{connector}/update".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorsApi#v1_connectors_connector_update_get"
      end
      return nil
    end
  end
end




