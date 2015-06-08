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
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body}).make.body
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
      

      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body}).make
      nil
    end

    # Get connection parameters
    # Returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
    # @param connector Lowercase system name of the source application or device. Get a list of available connectors from the /connectors/list endpoint.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.connectors_connector_connect_instructions_get(connector, opts = {})
      
      # verify the required parameter 'connector' is set
      raise "Missing the required parameter 'connector' when calling connectors_connector_connect_instructions_get" if connector.nil?
      

      # resource path
      path = "/connectors/{connector}/connectInstructions".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)

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
      

      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body}).make
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
      

      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body}).make
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
      

      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body}).make
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
      

      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body}).make
      nil
    end
  end
end
