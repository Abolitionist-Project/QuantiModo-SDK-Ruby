require "uri"

module SwaggerClient
  class CredentialApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all Credentials
    # Get all Credentials
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :connector_id connector_id
    # @option opts [String] :attr_key attr_key
    # @option opts [String] :attr_value attr_value
    # @option opts [String] :created_at created_at
    # @option opts [String] :updated_at updated_at
    # @option opts [Integer] :limit limit
    # @option opts [Integer] :offset offset
    # @option opts [String] :sort sort
    # @return [inline_response_200_9]
    def credentials_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CredentialApi#credentials_get ..."
      end
      
      # resource path
      path = "/credentials".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'connector_id'] = opts[:'connector_id'] if opts[:'connector_id']
      query_params[:'attr_key'] = opts[:'attr_key'] if opts[:'attr_key']
      query_params[:'attr_value'] = opts[:'attr_value'] if opts[:'attr_value']
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
        :return_type => 'inline_response_200_9')
      if Configuration.debugging
        Configuration.logger.debug "API called: CredentialApi#credentials_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store Credential
    # Store Credential
    # @param [Hash] opts the optional parameters
    # @option opts [Credential] :body Credential that should be stored
    # @return [inline_response_200_10]
    def credentials_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CredentialApi#credentials_post ..."
      end
      
      # resource path
      path = "/credentials".sub('{format}','json')

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
        :return_type => 'inline_response_200_10')
      if Configuration.debugging
        Configuration.logger.debug "API called: CredentialApi#credentials_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Credential
    # Get Credential
    # @param id connector id
    # @param attr_key attrKey
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_10]
    def credentials_id_get(id, attr_key, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CredentialApi#credentials_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling credentials_id_get" if id.nil?
      
      # verify the required parameter 'attr_key' is set
      fail "Missing the required parameter 'attr_key' when calling credentials_id_get" if attr_key.nil?
      
      # resource path
      path = "/credentials/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'attrKey'] = attr_key

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
        :return_type => 'inline_response_200_10')
      if Configuration.debugging
        Configuration.logger.debug "API called: CredentialApi#credentials_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update Credential
    # Update Credential
    # @param id connector id
    # @param attr_key attrKey
    # @param [Hash] opts the optional parameters
    # @option opts [Credential] :body Credential that should be updated
    # @return [inline_response_200_2]
    def credentials_id_put(id, attr_key, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CredentialApi#credentials_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling credentials_id_put" if id.nil?
      
      # verify the required parameter 'attr_key' is set
      fail "Missing the required parameter 'attr_key' when calling credentials_id_put" if attr_key.nil?
      
      # resource path
      path = "/credentials/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'attrKey'] = attr_key

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
        Configuration.logger.debug "API called: CredentialApi#credentials_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete Credential
    # Delete Credential
    # @param id connector id
    # @param attr_key attrKey
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_2]
    def credentials_id_delete(id, attr_key, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CredentialApi#credentials_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling credentials_id_delete" if id.nil?
      
      # verify the required parameter 'attr_key' is set
      fail "Missing the required parameter 'attr_key' when calling credentials_id_delete" if attr_key.nil?
      
      # resource path
      path = "/credentials/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'attrKey'] = attr_key

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
        Configuration.logger.debug "API called: CredentialApi#credentials_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




