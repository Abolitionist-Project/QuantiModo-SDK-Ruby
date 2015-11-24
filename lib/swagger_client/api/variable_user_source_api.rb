require "uri"

module SwaggerClient
  class VariableUserSourceApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all VariableUserSources
    # Get all VariableUserSources
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Integer] :variable_id ID of variable
    # @option opts [Integer] :user_id ID of User
    # @option opts [Integer] :timestamp Time that this measurement occurred Uses epoch minute (epoch time divided by 60)
    # @option opts [Integer] :earliest_measurement_time Earliest measurement time
    # @option opts [Integer] :latest_measurement_time Latest measurement time
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_29]
    def variable_user_sources_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableUserSourceApi#variable_user_sources_get ..."
      end
      
      # resource path
      path = "/variableUserSources".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'variable_id'] = opts[:'variable_id'] if opts[:'variable_id']
      query_params[:'user_id'] = opts[:'user_id'] if opts[:'user_id']
      query_params[:'timestamp'] = opts[:'timestamp'] if opts[:'timestamp']
      query_params[:'earliest_measurement_time'] = opts[:'earliest_measurement_time'] if opts[:'earliest_measurement_time']
      query_params[:'latest_measurement_time'] = opts[:'latest_measurement_time'] if opts[:'latest_measurement_time']
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
        :return_type => 'inline_response_200_29')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariableUserSourceApi#variable_user_sources_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store VariableUserSource
    # Store VariableUserSource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [VariableUserSource] :body VariableUserSource that should be stored
    # @return [inline_response_200_30]
    def variable_user_sources_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableUserSourceApi#variable_user_sources_post ..."
      end
      
      # resource path
      path = "/variableUserSources".sub('{format}','json')

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
        :return_type => 'inline_response_200_30')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariableUserSourceApi#variable_user_sources_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get VariableUserSource
    # Get VariableUserSource
    # @param id id of VariableUserSource
    # @param source_id source id of VariableUserSource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_30]
    def variable_user_sources_id_get(id, source_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableUserSourceApi#variable_user_sources_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling variable_user_sources_id_get" if id.nil?
      
      # verify the required parameter 'source_id' is set
      fail "Missing the required parameter 'source_id' when calling variable_user_sources_id_get" if source_id.nil?
      
      # resource path
      path = "/variableUserSources/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'source_id'] = source_id
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
        :return_type => 'inline_response_200_30')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariableUserSourceApi#variable_user_sources_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update VariableUserSource
    # Update VariableUserSource
    # @param id variable_id of VariableUserSource
    # @param source_id source id of VariableUserSource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [VariableUserSource] :body VariableUserSource that should be updated
    # @return [inline_response_200_2]
    def variable_user_sources_id_put(id, source_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableUserSourceApi#variable_user_sources_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling variable_user_sources_id_put" if id.nil?
      
      # verify the required parameter 'source_id' is set
      fail "Missing the required parameter 'source_id' when calling variable_user_sources_id_put" if source_id.nil?
      
      # resource path
      path = "/variableUserSources/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'source_id'] = source_id
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
        Configuration.logger.debug "API called: VariableUserSourceApi#variable_user_sources_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete VariableUserSource
    # Delete VariableUserSource
    # @param id variable_id of VariableUserSource
    # @param source_id source id of VariableUserSource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_2]
    def variable_user_sources_id_delete(id, source_id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableUserSourceApi#variable_user_sources_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling variable_user_sources_id_delete" if id.nil?
      
      # verify the required parameter 'source_id' is set
      fail "Missing the required parameter 'source_id' when calling variable_user_sources_id_delete" if source_id.nil?
      
      # resource path
      path = "/variableUserSources/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'source_id'] = source_id
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
        Configuration.logger.debug "API called: VariableUserSourceApi#variable_user_sources_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




