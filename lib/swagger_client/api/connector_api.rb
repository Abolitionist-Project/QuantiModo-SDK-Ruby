require "uri"

module SwaggerClient
  class ConnectorApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all Connectors
    # Get all Connectors
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name name
    # @option opts [String] :display_name display_name
    # @option opts [String] :image image
    # @option opts [String] :get_it_url get_it_url
    # @option opts [String] :short_description short_description
    # @option opts [String] :long_description long_description
    # @option opts [BOOLEAN] :enabled enabled
    # @option opts [BOOLEAN] :oauth oauth
    # @option opts [Integer] :limit limit
    # @option opts [Integer] :offset offset
    # @option opts [String] :sort sort
    # @return [inline_response_200_5]
    def connectors_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorApi#connectors_get ..."
      end
      
      # resource path
      path = "/connectors".sub('{format}','json')

      # query parameters
      query_params = {}
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
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_5')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorApi#connectors_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store Connector
    # Store Connector
    # @param [Hash] opts the optional parameters
    # @option opts [Connector] :body Connector that should be stored
    # @return [inline_response_200_6]
    def connectors_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: ConnectorApi#connectors_post ..."
      end
      
      # resource path
      path = "/connectors".sub('{format}','json')

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
        :return_type => 'inline_response_200_6')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorApi#connectors_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Connector
    # Get Connector
    # @param id id of Connector
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_6]
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
        :return_type => 'inline_response_200_6')
      if Configuration.debugging
        Configuration.logger.debug "API called: ConnectorApi#connectors_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update Connector
    # Update Connector
    # @param id id of Connector
    # @param [Hash] opts the optional parameters
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
        Configuration.logger.debug "API called: ConnectorApi#connectors_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete Connector
    # Delete Connector
    # @param id id of Connector
    # @param [Hash] opts the optional parameters
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
        Configuration.logger.debug "API called: ConnectorApi#connectors_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




