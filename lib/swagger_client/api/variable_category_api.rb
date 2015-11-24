require "uri"

module SwaggerClient
  class VariableCategoryApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all VariableCategories
    # The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :name Name of the category
    # @option opts [Float] :filling_value Value for replacing null measurements
    # @option opts [Float] :maximum_allowed_value Maximum recorded value of this category
    # @option opts [Float] :minimum_allowed_value Minimum recorded value of this category
    # @option opts [Integer] :duration_of_action Estimated number of seconds following the onset delay in which a stimulus produces a perceivable effect
    # @option opts [Integer] :onset_delay Estimated number of seconds that pass before a stimulus produces a perceivable effect
    # @option opts [String] :combination_operation How to combine values of this variable (for instance, to see a summary of the values over a month) SUM or MEAN
    # @option opts [Integer] :updated updated
    # @option opts [BOOLEAN] :cause_only A value of 1 indicates that this category is generally a cause in a causal relationship.  An example of a causeOnly category would be a category such as Work which would generally not be influenced by the behaviour of the user
    # @option opts [Integer] :public Is category public
    # @option opts [BOOLEAN] :outcome outcome
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [String] :image_url Image URL
    # @option opts [Integer] :default_unit_id ID of the default unit for the category
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_27]
    def variable_categories_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableCategoryApi#variable_categories_get ..."
      end
      
      # resource path
      path = "/variableCategories".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'name'] = opts[:'name'] if opts[:'name']
      query_params[:'filling_value'] = opts[:'filling_value'] if opts[:'filling_value']
      query_params[:'maximum_allowed_value'] = opts[:'maximum_allowed_value'] if opts[:'maximum_allowed_value']
      query_params[:'minimum_allowed_value'] = opts[:'minimum_allowed_value'] if opts[:'minimum_allowed_value']
      query_params[:'duration_of_action'] = opts[:'duration_of_action'] if opts[:'duration_of_action']
      query_params[:'onset_delay'] = opts[:'onset_delay'] if opts[:'onset_delay']
      query_params[:'combination_operation'] = opts[:'combination_operation'] if opts[:'combination_operation']
      query_params[:'updated'] = opts[:'updated'] if opts[:'updated']
      query_params[:'cause_only'] = opts[:'cause_only'] if opts[:'cause_only']
      query_params[:'public'] = opts[:'public'] if opts[:'public']
      query_params[:'outcome'] = opts[:'outcome'] if opts[:'outcome']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
      query_params[:'image_url'] = opts[:'image_url'] if opts[:'image_url']
      query_params[:'default_unit_id'] = opts[:'default_unit_id'] if opts[:'default_unit_id']
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
        :return_type => 'inline_response_200_27')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariableCategoryApi#variable_categories_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store VariableCategory
    # Store VariableCategory
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [VariableCategory] :body VariableCategory that should be stored
    # @return [inline_response_200_28]
    def variable_categories_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableCategoryApi#variable_categories_post ..."
      end
      
      # resource path
      path = "/variableCategories".sub('{format}','json')

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
        :return_type => 'inline_response_200_28')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariableCategoryApi#variable_categories_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get VariableCategory
    # Get VariableCategory
    # @param id id of VariableCategory
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_28]
    def variable_categories_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableCategoryApi#variable_categories_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling variable_categories_id_get" if id.nil?
      
      # resource path
      path = "/variableCategories/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'inline_response_200_28')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariableCategoryApi#variable_categories_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update VariableCategory
    # Update VariableCategory
    # @param id id of VariableCategory
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [VariableCategory] :body VariableCategory that should be updated
    # @return [inline_response_200_2]
    def variable_categories_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableCategoryApi#variable_categories_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling variable_categories_id_put" if id.nil?
      
      # resource path
      path = "/variableCategories/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: VariableCategoryApi#variable_categories_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete VariableCategory
    # Delete VariableCategory
    # @param id id of VariableCategory
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_2]
    def variable_categories_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableCategoryApi#variable_categories_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling variable_categories_id_delete" if id.nil?
      
      # resource path
      path = "/variableCategories/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: VariableCategoryApi#variable_categories_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




