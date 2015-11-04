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
    # @option opts [Integer] :user_id user_id
    # @option opts [Integer] :connector_id connector_id
    # @option opts [String] :connect_status connect_status
    # @option opts [String] :connect_error connect_error
    # @option opts [String] :update_requested_at update_requested_at
    # @option opts [String] :update_status update_status
    # @option opts [String] :update_error update_error
    # @option opts [String] :last_successful_updated_at last_successful_updated_at
    # @option opts [String] :created_at created_at
    # @option opts [String] :updated_at updated_at
    # @option opts [Integer] :limit limit
    # @option opts [Integer] :offset offset
    # @option opts [String] :sort sort
    # @return [inline_response_200_3]
    def connections_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectionApi#connections_get ..."
      end
      
      # resource path
      path = "/connections".sub('{format}','json')

      # query parameters
      query_params = {}
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
        :return_type => 'inline_response_200_3')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectionApi#connections_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store Connection
    # Store Connection
    # @param [Hash] opts the optional parameters
    # @option opts [Connection] :body Connection that should be stored
    # @return [inline_response_200_4]
    def connections_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectionApi#connections_post ..."
      end
      
      # resource path
      path = "/connections".sub('{format}','json')

      # query parameters
      query_params = {}

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
        :return_type => 'inline_response_200_4')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectionApi#connections_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Connection
    # Get Connection
    # @param id id of Connection
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_4]
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
        :return_type => 'inline_response_200_4')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectionApi#connections_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update Connection
    # Update Connection
    # @param id id of Connection
    # @param [Hash] opts the optional parameters
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




