require "uri"

module SwaggerClient
  class UnitCategoryApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all UnitCategories
    # Get all UnitCategories
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name name
    # @option opts [String] :created_at created_at
    # @option opts [String] :updated_at updated_at
    # @option opts [Integer] :limit limit
    # @option opts [Integer] :offset offset
    # @option opts [String] :sort sort
    # @return [inline_response_200_15]
    def unit_categories_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitCategoryApi#unit_categories_get ..."
      end
      
      # resource path
      path = "/unitCategories".sub('{format}','json')

      # query parameters
      query_params = {}
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
        :return_type => 'inline_response_200_15')
      if Configuration.debugging
        Configuration.logger.debug "API called: UnitCategoryApi#unit_categories_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store UnitCategory
    # Store UnitCategory
    # @param [Hash] opts the optional parameters
    # @option opts [UnitCategory] :body UnitCategory that should be stored
    # @return [inline_response_200_16]
    def unit_categories_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitCategoryApi#unit_categories_post ..."
      end
      
      # resource path
      path = "/unitCategories".sub('{format}','json')

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
        :return_type => 'inline_response_200_16')
      if Configuration.debugging
        Configuration.logger.debug "API called: UnitCategoryApi#unit_categories_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get UnitCategory
    # Get UnitCategory
    # @param id id of UnitCategory
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_16]
    def unit_categories_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitCategoryApi#unit_categories_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling unit_categories_id_get" if id.nil?
      
      # resource path
      path = "/unitCategories/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'inline_response_200_16')
      if Configuration.debugging
        Configuration.logger.debug "API called: UnitCategoryApi#unit_categories_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update UnitCategory
    # Update UnitCategory
    # @param id id of UnitCategory
    # @param [Hash] opts the optional parameters
    # @option opts [UnitCategory] :body UnitCategory that should be updated
    # @return [inline_response_200_2]
    def unit_categories_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitCategoryApi#unit_categories_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling unit_categories_id_put" if id.nil?
      
      # resource path
      path = "/unitCategories/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: UnitCategoryApi#unit_categories_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete UnitCategory
    # Delete UnitCategory
    # @param id id of UnitCategory
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_2]
    def unit_categories_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitCategoryApi#unit_categories_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling unit_categories_id_delete" if id.nil?
      
      # resource path
      path = "/unitCategories/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: UnitCategoryApi#unit_categories_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




