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
    # @option opts [Integer] :variable_id variable_id
    # @option opts [Integer] :user_id user_id
    # @option opts [Integer] :timestamp timestamp
    # @option opts [String] :created_at created_at
    # @option opts [String] :updated_at updated_at
    # @option opts [Integer] :limit limit
    # @option opts [Integer] :offset offset
    # @option opts [String] :sort sort
    # @return [inline_response_200_25]
    def variable_user_sources_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableUserSourceApi#variable_user_sources_get ..."
      end
      
      # resource path
      path = "/variableUserSources".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'variable_id'] = opts[:'variable_id'] if opts[:'variable_id']
      query_params[:'user_id'] = opts[:'user_id'] if opts[:'user_id']
      query_params[:'timestamp'] = opts[:'timestamp'] if opts[:'timestamp']
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
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_25')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariableUserSourceApi#variable_user_sources_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store VariableUserSource
    # Store VariableUserSource
    # @param [Hash] opts the optional parameters
    # @option opts [VariableUserSource] :body VariableUserSource that should be stored
    # @return [inline_response_200_26]
    def variable_user_sources_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableUserSourceApi#variable_user_sources_post ..."
      end
      
      # resource path
      path = "/variableUserSources".sub('{format}','json')

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
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_26')
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
    # @return [inline_response_200_26]
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
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_26')
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
      

      auth_names = []
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
      

      auth_names = []
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




