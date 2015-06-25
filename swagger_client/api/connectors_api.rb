require "uri"

module SwaggerClient
  class ConnectorsApi
    basePath = "https://localhost/api"
    # apiInvoker = APIInvoker

    # List of Connectors
    # Returns a list of all available connectors. A connector pulls data from other data providers using their API or a screenscraper.
    # @param [Hash] opts the optional parameters
    # @return [array[Connector]]
    def self.connectors_list_get(opts = {})
      

      # resource path
      path = "/connectors/list".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      response.map {|response| obj = Connector.new() and obj.build_from_hash(response) }
    end

    # Obtain a token from 3rd party data source
    # Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.connectors_connector_connect_get(connector, opts = {})
      
      # verify the required parameter 'connector' is set
      raise "Missing the required parameter 'connector' when calling connectors_connector_connect_get" if connector.nil?
      

      # resource path
      path = "/connectors/{connector}/connect".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # Get connection parameters
    # Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param url URL which should be used to enable the connector
    # @param parameters Array of Parameters for the request to enable connector
    # @param use_popup Should use popup when enabling connector
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.connectors_connector_connect_instructions_get(connector, url, parameters, use_popup, opts = {})
      
      # verify the required parameter 'connector' is set
      raise "Missing the required parameter 'connector' when calling connectors_connector_connect_instructions_get" if connector.nil?
      
      # verify the required parameter 'url' is set
      raise "Missing the required parameter 'url' when calling connectors_connector_connect_instructions_get" if url.nil?
      
      # verify the required parameter 'parameters' is set
      raise "Missing the required parameter 'parameters' when calling connectors_connector_connect_instructions_get" if parameters.nil?
      
      # verify the required parameter 'use_popup' is set
      raise "Missing the required parameter 'use_popup' when calling connectors_connector_connect_instructions_get" if use_popup.nil?
      

      # resource path
      path = "/connectors/{connector}/connectInstructions".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}
      query_params[:'url'] = url
      query_params[:'parameters'] = parameters
      query_params[:'usePopup'] = use_popup

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # Get connection parameters
    # Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param display_name Name of the parameter that is user visible in the form
    # @param key Name of the property that the user has to enter such as username or password Connector (used in HTTP request) TODO What&#39;s a connector key?
    # @param use_popup Should use popup when enabling connector
    # @param type Type of input field such as those found here http://www.w3schools.com/tags/tag_input.asp
    # @param placeholder Placeholder hint value for the parameter input tag
    # @param default_value Default parameter value
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.connectors_connector_connect_parameter_get(connector, display_name, key, use_popup, type, placeholder, default_value, opts = {})
      
      # verify the required parameter 'connector' is set
      raise "Missing the required parameter 'connector' when calling connectors_connector_connect_parameter_get" if connector.nil?
      
      # verify the required parameter 'display_name' is set
      raise "Missing the required parameter 'display_name' when calling connectors_connector_connect_parameter_get" if display_name.nil?
      
      # verify the required parameter 'key' is set
      raise "Missing the required parameter 'key' when calling connectors_connector_connect_parameter_get" if key.nil?
      
      # verify the required parameter 'use_popup' is set
      raise "Missing the required parameter 'use_popup' when calling connectors_connector_connect_parameter_get" if use_popup.nil?
      
      # verify the required parameter 'type' is set
      raise "Missing the required parameter 'type' when calling connectors_connector_connect_parameter_get" if type.nil?
      
      # verify the required parameter 'placeholder' is set
      raise "Missing the required parameter 'placeholder' when calling connectors_connector_connect_parameter_get" if placeholder.nil?
      
      # verify the required parameter 'default_value' is set
      raise "Missing the required parameter 'default_value' when calling connectors_connector_connect_parameter_get" if default_value.nil?
      

      # resource path
      path = "/connectors/{connector}/connectParameter".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}
      query_params[:'displayName'] = display_name
      query_params[:'key'] = key
      query_params[:'usePopup'] = use_popup
      query_params[:'type'] = type
      query_params[:'placeholder'] = placeholder
      query_params[:'defaultValue'] = default_value

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # Delete stored connection info
    # The disconnect method deletes any stored tokens or connection information from the connectors database.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.connectors_connector_disconnect_get(connector, opts = {})
      
      # verify the required parameter 'connector' is set
      raise "Missing the required parameter 'connector' when calling connectors_connector_disconnect_get" if connector.nil?
      

      # resource path
      path = "/connectors/{connector}/disconnect".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # Get connector info for user
    # Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.connectors_connector_info_get(connector, opts = {})
      
      # verify the required parameter 'connector' is set
      raise "Missing the required parameter 'connector' when calling connectors_connector_info_get" if connector.nil?
      

      # resource path
      path = "/connectors/{connector}/info".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # Sync with data source
    # The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.
    # @param connector Lowercase system name of the source application or device
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.connectors_connector_update_get(connector, opts = {})
      
      # verify the required parameter 'connector' is set
      raise "Missing the required parameter 'connector' when calling connectors_connector_update_get" if connector.nil?
      

      # resource path
      path = "/connectors/{connector}/update".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end
  end
end
