require "uri"

module SwaggerClient
  class ConnectorsApi

    # List of Connectors
    # Returns a list of all available connectors. A connector pulls data from other data providers using their API or a screenscraper.
    # @param [Hash] opts the optional parameters
    # @return [Array<Connector>]
    def self.v1_connectors_list_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: ConnectorsApi#v1_connectors_list_get ..."
      end
      
      # resource path
      path = "/v1/connectors/list".sub('{format}','json')

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
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Array<Connector>')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: ConnectorsApi#v1_connectors_list_get. Result: #{result.inspect}"
      end
      result
    end

    # Obtain a token from 3rd party data source
    # Attempt to obtain a token from the data provider, store it in the database. With this, the connector to continue to obtain new user data until the token is revoked.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.v1_connectors_connector_connect_get(connector, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: ConnectorsApi#v1_connectors_connector_connect_get ..."
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
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: ConnectorsApi#v1_connectors_connector_connect_get"
      end
      nil
    end

    # Delete stored connection info
    # The disconnect method deletes any stored tokens or connection information from the connectors database.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.v1_connectors_connector_disconnect_get(connector, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: ConnectorsApi#v1_connectors_connector_disconnect_get ..."
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
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: ConnectorsApi#v1_connectors_connector_disconnect_get"
      end
      nil
    end

    # Get connector info for user
    # Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @return [ConnectorInfo]
    def self.v1_connectors_connector_info_get(connector, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: ConnectorsApi#v1_connectors_connector_info_get ..."
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
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('ConnectorInfo')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: ConnectorsApi#v1_connectors_connector_info_get. Result: #{result.inspect}"
      end
      result
    end

    # Sync with data source
    # The update method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and retrieve any new measurements available.
    # @param connector Lowercase system name of the source application or device
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.v1_connectors_connector_update_get(connector, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: ConnectorsApi#v1_connectors_connector_update_get ..."
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
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: ConnectorsApi#v1_connectors_connector_update_get"
      end
      nil
    end
  end
end
