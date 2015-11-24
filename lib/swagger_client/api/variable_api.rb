require "uri"

module SwaggerClient
  class VariableApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all Variables
    # Get all Variables
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Integer] :id id
    # @option opts [String] :client_id The ID of the client application which last created or updated this common variable
    # @option opts [Integer] :parent_id ID of the parent variable if this variable has any parent
    # @option opts [String] :name User-defined variable display name
    # @option opts [Integer] :variable_category_id Variable category ID
    # @option opts [Integer] :default_unit_id ID of the default unit for the variable
    # @option opts [String] :combination_operation How to combine values of this variable (for instance, to see a summary of the values over a month) SUM or MEAN
    # @option opts [Float] :filling_value Value for replacing null measurements
    # @option opts [Float] :maximum_allowed_value Maximum reasonable value for this variable (uses default unit)
    # @option opts [Float] :minimum_allowed_value Minimum reasonable value for this variable (uses default unit)
    # @option opts [Integer] :onset_delay Estimated number of seconds that pass before a stimulus produces a perceivable effect
    # @option opts [Integer] :duration_of_action Estimated number of seconds following the onset delay in which a stimulus produces a perceivable effect
    # @option opts [Integer] :public Is variable public
    # @option opts [BOOLEAN] :cause_only A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user
    # @option opts [Float] :most_common_value Most common value
    # @option opts [Integer] :most_common_unit_id Most common Unit
    # @option opts [Float] :standard_deviation Standard Deviation
    # @option opts [Float] :variance Average variance for this variable based on all user data
    # @option opts [Float] :mean Mean for this variable based on all user data
    # @option opts [Float] :median Median for this variable based on all user data
    # @option opts [Float] :number_of_measurements Number of measurements for this variable based on all user data
    # @option opts [Float] :number_of_unique_values Number of unique values for this variable based on all user data
    # @option opts [Float] :skewness Skewness for this variable based on all user data
    # @option opts [Float] :kurtosis Kurtosis for this variable based on all user data
    # @option opts [String] :status status
    # @option opts [String] :error_message error_message
    # @option opts [String] :last_successful_update_time When this variable or its settings were last updated
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [String] :product_url Product URL
    # @option opts [String] :image_url Image URL
    # @option opts [Float] :price Price
    # @option opts [Integer] :number_of_user_variables Number of users who have data for this variable
    # @option opts [BOOLEAN] :outcome Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables.
    # @option opts [Float] :minimum_recorded_value Minimum recorded value of this variable based on all user data
    # @option opts [Float] :maximum_recorded_value Maximum recorded value of this variable based on all user data
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort records by a given field name. If the field name is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_31]
    def variables_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableApi#variables_get ..."
      end
      
      # resource path
      path = "/variables".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'id'] = opts[:'id'] if opts[:'id']
      query_params[:'client_id'] = opts[:'client_id'] if opts[:'client_id']
      query_params[:'parent_id'] = opts[:'parent_id'] if opts[:'parent_id']
      query_params[:'name'] = opts[:'name'] if opts[:'name']
      query_params[:'variable_category_id'] = opts[:'variable_category_id'] if opts[:'variable_category_id']
      query_params[:'default_unit_id'] = opts[:'default_unit_id'] if opts[:'default_unit_id']
      query_params[:'combination_operation'] = opts[:'combination_operation'] if opts[:'combination_operation']
      query_params[:'filling_value'] = opts[:'filling_value'] if opts[:'filling_value']
      query_params[:'maximum_allowed_value'] = opts[:'maximum_allowed_value'] if opts[:'maximum_allowed_value']
      query_params[:'minimum_allowed_value'] = opts[:'minimum_allowed_value'] if opts[:'minimum_allowed_value']
      query_params[:'onset_delay'] = opts[:'onset_delay'] if opts[:'onset_delay']
      query_params[:'duration_of_action'] = opts[:'duration_of_action'] if opts[:'duration_of_action']
      query_params[:'public'] = opts[:'public'] if opts[:'public']
      query_params[:'cause_only'] = opts[:'cause_only'] if opts[:'cause_only']
      query_params[:'most_common_value'] = opts[:'most_common_value'] if opts[:'most_common_value']
      query_params[:'most_common_unit_id'] = opts[:'most_common_unit_id'] if opts[:'most_common_unit_id']
      query_params[:'standard_deviation'] = opts[:'standard_deviation'] if opts[:'standard_deviation']
      query_params[:'variance'] = opts[:'variance'] if opts[:'variance']
      query_params[:'mean'] = opts[:'mean'] if opts[:'mean']
      query_params[:'median'] = opts[:'median'] if opts[:'median']
      query_params[:'number_of_measurements'] = opts[:'number_of_measurements'] if opts[:'number_of_measurements']
      query_params[:'number_of_unique_values'] = opts[:'number_of_unique_values'] if opts[:'number_of_unique_values']
      query_params[:'skewness'] = opts[:'skewness'] if opts[:'skewness']
      query_params[:'kurtosis'] = opts[:'kurtosis'] if opts[:'kurtosis']
      query_params[:'status'] = opts[:'status'] if opts[:'status']
      query_params[:'error_message'] = opts[:'error_message'] if opts[:'error_message']
      query_params[:'last_successful_update_time'] = opts[:'last_successful_update_time'] if opts[:'last_successful_update_time']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
      query_params[:'product_url'] = opts[:'product_url'] if opts[:'product_url']
      query_params[:'image_url'] = opts[:'image_url'] if opts[:'image_url']
      query_params[:'price'] = opts[:'price'] if opts[:'price']
      query_params[:'number_of_user_variables'] = opts[:'number_of_user_variables'] if opts[:'number_of_user_variables']
      query_params[:'outcome'] = opts[:'outcome'] if opts[:'outcome']
      query_params[:'minimum_recorded_value'] = opts[:'minimum_recorded_value'] if opts[:'minimum_recorded_value']
      query_params[:'maximum_recorded_value'] = opts[:'maximum_recorded_value'] if opts[:'maximum_recorded_value']
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
        :return_type => 'inline_response_200_31')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariableApi#variables_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store Variable
    # Allows the client to create a new variable in the `variables` table.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Variable] :body Variable that should be stored
    # @return [inline_response_200_32]
    def variables_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableApi#variables_post ..."
      end
      
      # resource path
      path = "/variables".sub('{format}','json')

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
        :return_type => 'inline_response_200_32')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariableApi#variables_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Variable
    # Get Variable
    # @param id id of Variable
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_32]
    def variables_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableApi#variables_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling variables_id_get" if id.nil?
      
      # resource path
      path = "/variables/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'inline_response_200_32')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariableApi#variables_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update Variable
    # Update Variable
    # @param id id of Variable
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Variable] :body Variable that should be updated
    # @return [inline_response_200_2]
    def variables_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableApi#variables_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling variables_id_put" if id.nil?
      
      # resource path
      path = "/variables/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: VariableApi#variables_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete Variable
    # Delete Variable
    # @param id id of Variable
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_2]
    def variables_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariableApi#variables_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling variables_id_delete" if id.nil?
      
      # resource path
      path = "/variables/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: VariableApi#variables_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




