require "uri"

module SwaggerClient
  class ConnectorApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get list of Connectors
    # A connector pulls data from other data providers using their API or a screenscraper. Returns a list of all available connectors and information about them such as their id, name, whether the user has provided access, logo url, connection instructions, and the update history.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :name Lowercase system name for the data source
    # @option opts [String] :display_name Pretty display name for the data source
    # @option opts [String] :image URL to the image of the connector logo
    # @option opts [String] :get_it_url URL to a site where one can get this device or application
    # @option opts [String] :short_description Short description of the service (such as the categories it tracks)
    # @option opts [String] :long_description Longer paragraph description of the data provider
    # @option opts [BOOLEAN] :enabled Set to 1 if the connector should be returned when listing connectors
    # @option opts [BOOLEAN] :oauth Set to 1 if the connector uses OAuth authentication as opposed to username/password
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_7]
    def connectors_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorApi#connectors_get ..."
      end
      
      # resource path
      path = "/connectors".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'name'] = opts[:'name'] if opts[:'name']
      query_params[:'display_name'] = opts[:'display_name'] if opts[:'display_name']
      query_params[:'image'] = opts[:'image'] if opts[:'image']
      query_params[:'get_it_url'] = opts[:'get_it_url'] if opts[:'get_it_url']
      query_params[:'short_description'] = opts[:'short_description'] if opts[:'short_description']
      query_params[:'long_description'] = opts[:'long_description'] if opts[:'long_description']
      query_params[:'enabled'] = opts[:'enabled'] if opts[:'enabled']
      query_params[:'oauth'] = opts[:'oauth'] if opts[:'oauth']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'sort'] = opts[:'sort'] if opts[:'sort']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['quantimodo_oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_7')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorApi#connectors_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store Connector
    # Store Connector
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Connector] :body Connector that should be stored
    # @return [inline_response_200_8]
    def connectors_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorApi#connectors_post ..."
      end
      
      # resource path
      path = "/connectors".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = ['quantimodo_oauth2']
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_8')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorApi#connectors_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get connector info for user
    # Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
    # @param id id of Connector
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_8]
    def connectors_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorApi#connectors_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling connectors_id_get" if id.nil?
      
      # resource path
      path = "/connectors/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['quantimodo_oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_8')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorApi#connectors_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update Connector
    # Update Connector
    # @param id id of Connector
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Connector] :body Connector that should be updated
    # @return [inline_response_200_2]
    def connectors_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorApi#connectors_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling connectors_id_put" if id.nil?
      
      # resource path
      path = "/connectors/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = ['quantimodo_oauth2']
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_2')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorApi#connectors_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete Connector
    # Delete Connector
    # @param id id of Connector
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_2]
    def connectors_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorApi#connectors_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling connectors_id_delete" if id.nil?
      
      # resource path
      path = "/connectors/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['quantimodo_oauth2']
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_2')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorApi#connectors_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




