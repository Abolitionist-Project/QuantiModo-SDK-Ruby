require "uri"

module SwaggerClient
  class UnitApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all available units
    # Get all available units
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :client_id The ID of the client application which last created or updated this unit
    # @option opts [String] :name Unit name
    # @option opts [String] :abbreviated_name Unit abbreviation
    # @option opts [Integer] :unit_category_id Unit category ID
    # @option opts [Float] :minimum_value Minimum value permitted for this unit
    # @option opts [Float] :maximum_value Maximum value permitted for this unit
    # @option opts [Integer] :updated updated
    # @option opts [Integer] :default_unit_id ID of default unit for this units category
    # @option opts [Float] :multiply Value multiplied to convert to default unit in this unit category
    # @option opts [Float] :add Value which should be added to convert to default unit
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_19]
    def units_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitApi#units_get ..."
      end
      
      # resource path
      path = "/units".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'client_id'] = opts[:'client_id'] if opts[:'client_id']
      query_params[:'name'] = opts[:'name'] if opts[:'name']
      query_params[:'abbreviated_name'] = opts[:'abbreviated_name'] if opts[:'abbreviated_name']
      query_params[:'unit_category_id'] = opts[:'unit_category_id'] if opts[:'unit_category_id']
      query_params[:'minimum_value'] = opts[:'minimum_value'] if opts[:'minimum_value']
      query_params[:'maximum_value'] = opts[:'maximum_value'] if opts[:'maximum_value']
      query_params[:'updated'] = opts[:'updated'] if opts[:'updated']
      query_params[:'default_unit_id'] = opts[:'default_unit_id'] if opts[:'default_unit_id']
      query_params[:'multiply'] = opts[:'multiply'] if opts[:'multiply']
      query_params[:'add'] = opts[:'add'] if opts[:'add']
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
        :return_type => 'inline_response_200_19')
      if Configuration.debugging
        Configuration.logger.debug "API called: UnitApi#units_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store Unit
    # Store Unit
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Unit] :body Unit that should be stored
    # @return [inline_response_200_20]
    def units_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitApi#units_post ..."
      end
      
      # resource path
      path = "/units".sub('{format}','json')

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
        :return_type => 'inline_response_200_20')
      if Configuration.debugging
        Configuration.logger.debug "API called: UnitApi#units_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Unit
    # Get Unit
    # @param id id of Unit
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_20]
    def units_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitApi#units_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling units_id_get" if id.nil?
      
      # resource path
      path = "/units/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'inline_response_200_20')
      if Configuration.debugging
        Configuration.logger.debug "API called: UnitApi#units_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update Unit
    # Update Unit
    # @param id id of Unit
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Unit] :body Unit that should be updated
    # @return [inline_response_200_2]
    def units_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitApi#units_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling units_id_put" if id.nil?
      
      # resource path
      path = "/units/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: UnitApi#units_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete Unit
    # Delete Unit
    # @param id id of Unit
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_2]
    def units_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitApi#units_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling units_id_delete" if id.nil?
      
      # resource path
      path = "/units/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: UnitApi#units_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




