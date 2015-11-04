require "uri"

module SwaggerClient
  class UpdateApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all Updates
    # Get all Updates
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id user_id
    # @option opts [Integer] :connector_id connector_id
    # @option opts [Integer] :number_of_measurements number_of_measurements
    # @option opts [BOOLEAN] :success success
    # @option opts [String] :message message
    # @option opts [String] :created_at created_at
    # @option opts [String] :updated_at updated_at
    # @option opts [Integer] :limit limit
    # @option opts [Integer] :offset offset
    # @option opts [String] :sort sort
    # @return [inline_response_200_19]
    def updates_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UpdateApi#updates_get ..."
      end
      
      # resource path
      path = "/updates".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'user_id'] = opts[:'user_id'] if opts[:'user_id']
      query_params[:'connector_id'] = opts[:'connector_id'] if opts[:'connector_id']
      query_params[:'number_of_measurements'] = opts[:'number_of_measurements'] if opts[:'number_of_measurements']
      query_params[:'success'] = opts[:'success'] if opts[:'success']
      query_params[:'message'] = opts[:'message'] if opts[:'message']
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
        :return_type => 'inline_response_200_19')
      if Configuration.debugging
        Configuration.logger.debug "API called: UpdateApi#updates_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store Update
    # Store Update
    # @param [Hash] opts the optional parameters
    # @option opts [Update] :body Update that should be stored
    # @return [inline_response_200_20]
    def updates_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UpdateApi#updates_post ..."
      end
      
      # resource path
      path = "/updates".sub('{format}','json')

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
        :return_type => 'inline_response_200_20')
      if Configuration.debugging
        Configuration.logger.debug "API called: UpdateApi#updates_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Update
    # Get Update
    # @param id id of Update
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_20]
    def updates_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UpdateApi#updates_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling updates_id_get" if id.nil?
      
      # resource path
      path = "/updates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_20')
      if Configuration.debugging
        Configuration.logger.debug "API called: UpdateApi#updates_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update Update
    # Update Update
    # @param id id of Update
    # @param [Hash] opts the optional parameters
    # @option opts [Update] :body Update that should be updated
    # @return [inline_response_200_2]
    def updates_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UpdateApi#updates_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling updates_id_put" if id.nil?
      
      # resource path
      path = "/updates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_2')
      if Configuration.debugging
        Configuration.logger.debug "API called: UpdateApi#updates_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete Update
    # Delete Update
    # @param id id of Update
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_2]
    def updates_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UpdateApi#updates_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling updates_id_delete" if id.nil?
      
      # resource path
      path = "/updates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      

      auth_names = []
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_2')
      if Configuration.debugging
        Configuration.logger.debug "API called: UpdateApi#updates_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




