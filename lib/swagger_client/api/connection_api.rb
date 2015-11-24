require "uri"

module SwaggerClient
  class ConnectionApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all Connections
    # Get all Connections
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Integer] :user_id ID of user that owns this correlation
    # @option opts [Integer] :connector_id The id for the connector data source for which the connection is connected
    # @option opts [String] :connect_status Indicates whether a connector is currently connected to a service for a user.
    # @option opts [String] :connect_error Error message if there is a problem with authorizing this connection.
    # @option opts [String] :update_requested_at Time at which an update was requested by a user.
    # @option opts [String] :update_status Indicates whether a connector is currently updated.
    # @option opts [String] :update_error Indicates if there was an error during the update.
    # @option opts [String] :last_successful_updated_at The time at which the connector was last successfully updated.
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_5]
    def connections_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectionApi#connections_get ..."
      end
      
      # resource path
      path = "/connections".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'user_id'] = opts[:'user_id'] if opts[:'user_id']
      query_params[:'connector_id'] = opts[:'connector_id'] if opts[:'connector_id']
      query_params[:'connect_status'] = opts[:'connect_status'] if opts[:'connect_status']
      query_params[:'connect_error'] = opts[:'connect_error'] if opts[:'connect_error']
      query_params[:'update_requested_at'] = opts[:'update_requested_at'] if opts[:'update_requested_at']
      query_params[:'update_status'] = opts[:'update_status'] if opts[:'update_status']
      query_params[:'update_error'] = opts[:'update_error'] if opts[:'update_error']
      query_params[:'last_successful_updated_at'] = opts[:'last_successful_updated_at'] if opts[:'last_successful_updated_at']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
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
        :return_type => 'inline_response_200_5')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectionApi#connections_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store Connection
    # Store Connection
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Connection] :body Connection that should be stored
    # @return [inline_response_200_6]
    def connections_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectionApi#connections_post ..."
      end
      
      # resource path
      path = "/connections".sub('{format}','json')

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
        :return_type => 'inline_response_200_6')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectionApi#connections_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Connection
    # Get Connection
    # @param id id of Connection
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_6]
    def connections_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectionApi#connections_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling connections_id_get" if id.nil?
      
      # resource path
      path = "/connections/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'inline_response_200_6')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectionApi#connections_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update Connection
    # Update Connection
    # @param id id of Connection
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Connection] :body Connection that should be updated
    # @return [inline_response_200_2]
    def connections_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectionApi#connections_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling connections_id_put" if id.nil?
      
      # resource path
      path = "/connections/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: ConnectionApi#connections_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete Connection
    # Delete Connection
    # @param id id of Connection
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_2]
    def connections_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectionApi#connections_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling connections_id_delete" if id.nil?
      
      # resource path
      path = "/connections/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: ConnectionApi#connections_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




