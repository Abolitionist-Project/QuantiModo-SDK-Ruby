require "uri"

module SwaggerClient
  class SourceApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all Sources
    # Get all Sources
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_id client_id
    # @option opts [String] :name name
    # @option opts [String] :created_at created_at
    # @option opts [String] :updated_at updated_at
    # @option opts [Integer] :limit limit
    # @option opts [Integer] :offset offset
    # @option opts [String] :sort sort
    # @return [inline_response_200_13]
    def sources_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SourceApi#sources_get ..."
      end
      
      # resource path
      path = "/sources".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'client_id'] = opts[:'client_id'] if opts[:'client_id']
      query_params[:'name'] = opts[:'name'] if opts[:'name']
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
        :return_type => 'inline_response_200_13')
      if Configuration.debugging
        Configuration.logger.debug "API called: SourceApi#sources_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store Source
    # Store Source
    # @param [Hash] opts the optional parameters
    # @option opts [Source] :body Source that should be stored
    # @return [inline_response_200_14]
    def sources_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SourceApi#sources_post ..."
      end
      
      # resource path
      path = "/sources".sub('{format}','json')

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
        :return_type => 'inline_response_200_14')
      if Configuration.debugging
        Configuration.logger.debug "API called: SourceApi#sources_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Source
    # Get Source
    # @param id id of Source
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_14]
    def sources_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SourceApi#sources_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling sources_id_get" if id.nil?
      
      # resource path
      path = "/sources/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'inline_response_200_14')
      if Configuration.debugging
        Configuration.logger.debug "API called: SourceApi#sources_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update Source
    # Update Source
    # @param id id of Source
    # @param [Hash] opts the optional parameters
    # @option opts [Source] :body Source that should be updated
    # @return [inline_response_200_2]
    def sources_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SourceApi#sources_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling sources_id_put" if id.nil?
      
      # resource path
      path = "/sources/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: SourceApi#sources_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete Source
    # Delete Source
    # @param id id of Source
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_2]
    def sources_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: SourceApi#sources_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling sources_id_delete" if id.nil?
      
      # resource path
      path = "/sources/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: SourceApi#sources_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




