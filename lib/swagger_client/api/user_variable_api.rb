require "uri"

module SwaggerClient
  class UserVariableApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all UserVariables
    # Get all UserVariables
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :client_id The ID of the client application which last created or updated this user variable
    # @option opts [Integer] :parent_id ID of the parent variable if this variable has any parent
    # @option opts [Integer] :variable_id ID of variable
    # @option opts [Integer] :user_id User ID
    # @option opts [Integer] :default_unit_id D of unit to use for this variable
    # @option opts [Float] :minimum_allowed_value Minimum reasonable value for this variable (uses default unit)
    # @option opts [Float] :maximum_allowed_value Maximum reasonable value for this variable (uses default unit)
    # @option opts [Float] :filling_value Value for replacing null measurements
    # @option opts [Integer] :join_with The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables
    # @option opts [Integer] :onset_delay Estimated number of seconds that pass before a stimulus produces a perceivable effect
    # @option opts [Integer] :duration_of_action Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect
    # @option opts [Integer] :variable_category_id ID of variable category
    # @option opts [Integer] :updated updated
    # @option opts [Integer] :public Is variable public
    # @option opts [BOOLEAN] :cause_only A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user
    # @option opts [String] :filling_type 0 -&gt; No filling, 1 -&gt; Use filling-value
    # @option opts [Integer] :number_of_measurements Number of measurements
    # @option opts [Integer] :number_of_processed_measurements Number of processed measurements
    # @option opts [Integer] :measurements_at_last_analysis Number of measurements at last analysis
    # @option opts [Integer] :last_unit_id ID of last Unit
    # @option opts [Integer] :last_original_unit_id ID of last original Unit
    # @option opts [Integer] :last_original_value Last original value which is stored
    # @option opts [Float] :last_value Last Value
    # @option opts [Float] :last_original_value2 Last original value which is stored
    # @option opts [Integer] :last_source_id ID of last source
    # @option opts [Integer] :number_of_correlations Number of correlations for this variable
    # @option opts [String] :status status
    # @option opts [String] :error_message error_message
    # @option opts [String] :last_successful_update_time When this variable or its settings were last updated
    # @option opts [Float] :standard_deviation Standard deviation
    # @option opts [Float] :variance Variance
    # @option opts [Float] :minimum_recorded_value Minimum recorded value of this variable
    # @option opts [Float] :maximum_recorded_value Maximum recorded value of this variable
    # @option opts [Float] :mean Mean
    # @option opts [Float] :median Median
    # @option opts [Integer] :most_common_unit_id Most common Unit ID
    # @option opts [Float] :most_common_value Most common value
    # @option opts [Float] :number_of_unique_daily_values Number of unique daily values
    # @option opts [Integer] :number_of_changes Number of changes
    # @option opts [Float] :skewness Skewness
    # @option opts [Float] :kurtosis Kurtosis
    # @option opts [Float] :latitude Latitude
    # @option opts [Float] :longitude Longitude
    # @option opts [String] :location Location
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [BOOLEAN] :outcome Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables
    # @option opts [String] :sources Comma-separated list of source names to limit variables to those sources
    # @option opts [Integer] :earliest_source_time Earliest source time
    # @option opts [Integer] :latest_source_time Latest source time
    # @option opts [Integer] :earliest_measurement_time Earliest measurement time
    # @option opts [Integer] :latest_measurement_time Latest measurement time
    # @option opts [Integer] :earliest_filling_time Earliest filling time
    # @option opts [Integer] :latest_filling_time Latest filling time
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_25]
    def user_variables_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UserVariableApi#user_variables_get ..."
      end
      
      # resource path
      path = "/userVariables".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'client_id'] = opts[:'client_id'] if opts[:'client_id']
      query_params[:'parent_id'] = opts[:'parent_id'] if opts[:'parent_id']
      query_params[:'variable_id'] = opts[:'variable_id'] if opts[:'variable_id']
      query_params[:'user_id'] = opts[:'user_id'] if opts[:'user_id']
      query_params[:'default_unit_id'] = opts[:'default_unit_id'] if opts[:'default_unit_id']
      query_params[:'minimum_allowed_value'] = opts[:'minimum_allowed_value'] if opts[:'minimum_allowed_value']
      query_params[:'maximum_allowed_value'] = opts[:'maximum_allowed_value'] if opts[:'maximum_allowed_value']
      query_params[:'filling_value'] = opts[:'filling_value'] if opts[:'filling_value']
      query_params[:'join_with'] = opts[:'join_with'] if opts[:'join_with']
      query_params[:'onset_delay'] = opts[:'onset_delay'] if opts[:'onset_delay']
      query_params[:'duration_of_action'] = opts[:'duration_of_action'] if opts[:'duration_of_action']
      query_params[:'variable_category_id'] = opts[:'variable_category_id'] if opts[:'variable_category_id']
      query_params[:'updated'] = opts[:'updated'] if opts[:'updated']
      query_params[:'public'] = opts[:'public'] if opts[:'public']
      query_params[:'cause_only'] = opts[:'cause_only'] if opts[:'cause_only']
      query_params[:'filling_type'] = opts[:'filling_type'] if opts[:'filling_type']
      query_params[:'number_of_measurements'] = opts[:'number_of_measurements'] if opts[:'number_of_measurements']
      query_params[:'number_of_processed_measurements'] = opts[:'number_of_processed_measurements'] if opts[:'number_of_processed_measurements']
      query_params[:'measurements_at_last_analysis'] = opts[:'measurements_at_last_analysis'] if opts[:'measurements_at_last_analysis']
      query_params[:'last_unit_id'] = opts[:'last_unit_id'] if opts[:'last_unit_id']
      query_params[:'last_original_unit_id'] = opts[:'last_original_unit_id'] if opts[:'last_original_unit_id']
      query_params[:'last_original_value'] = opts[:'last_original_value'] if opts[:'last_original_value']
      query_params[:'last_value'] = opts[:'last_value'] if opts[:'last_value']
      query_params[:'last_original_value'] = opts[:'last_original_value2'] if opts[:'last_original_value2']
      query_params[:'last_source_id'] = opts[:'last_source_id'] if opts[:'last_source_id']
      query_params[:'number_of_correlations'] = opts[:'number_of_correlations'] if opts[:'number_of_correlations']
      query_params[:'status'] = opts[:'status'] if opts[:'status']
      query_params[:'error_message'] = opts[:'error_message'] if opts[:'error_message']
      query_params[:'last_successful_update_time'] = opts[:'last_successful_update_time'] if opts[:'last_successful_update_time']
      query_params[:'standard_deviation'] = opts[:'standard_deviation'] if opts[:'standard_deviation']
      query_params[:'variance'] = opts[:'variance'] if opts[:'variance']
      query_params[:'minimum_recorded_value'] = opts[:'minimum_recorded_value'] if opts[:'minimum_recorded_value']
      query_params[:'maximum_recorded_value'] = opts[:'maximum_recorded_value'] if opts[:'maximum_recorded_value']
      query_params[:'mean'] = opts[:'mean'] if opts[:'mean']
      query_params[:'median'] = opts[:'median'] if opts[:'median']
      query_params[:'most_common_unit_id'] = opts[:'most_common_unit_id'] if opts[:'most_common_unit_id']
      query_params[:'most_common_value'] = opts[:'most_common_value'] if opts[:'most_common_value']
      query_params[:'number_of_unique_daily_values'] = opts[:'number_of_unique_daily_values'] if opts[:'number_of_unique_daily_values']
      query_params[:'number_of_changes'] = opts[:'number_of_changes'] if opts[:'number_of_changes']
      query_params[:'skewness'] = opts[:'skewness'] if opts[:'skewness']
      query_params[:'kurtosis'] = opts[:'kurtosis'] if opts[:'kurtosis']
      query_params[:'latitude'] = opts[:'latitude'] if opts[:'latitude']
      query_params[:'longitude'] = opts[:'longitude'] if opts[:'longitude']
      query_params[:'location'] = opts[:'location'] if opts[:'location']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
      query_params[:'outcome'] = opts[:'outcome'] if opts[:'outcome']
      query_params[:'sources'] = opts[:'sources'] if opts[:'sources']
      query_params[:'earliest_source_time'] = opts[:'earliest_source_time'] if opts[:'earliest_source_time']
      query_params[:'latest_source_time'] = opts[:'latest_source_time'] if opts[:'latest_source_time']
      query_params[:'earliest_measurement_time'] = opts[:'earliest_measurement_time'] if opts[:'earliest_measurement_time']
      query_params[:'latest_measurement_time'] = opts[:'latest_measurement_time'] if opts[:'latest_measurement_time']
      query_params[:'earliest_filling_time'] = opts[:'earliest_filling_time'] if opts[:'earliest_filling_time']
      query_params[:'latest_filling_time'] = opts[:'latest_filling_time'] if opts[:'latest_filling_time']
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
        :return_type => 'inline_response_200_25')
      if Configuration.debugging
        Configuration.logger.debug "API called: UserVariableApi#user_variables_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store UserVariable
    # Users can change things like the display name for a variable. They can also change the parameters used in analysis of that variable such as the expected duration of action for a variable to have an effect, the estimated delay before the onset of action. In order to filter out erroneous data, they are able to set the maximum and minimum reasonable daily values for a variable.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [UserVariable] :body UserVariable that should be stored
    # @return [inline_response_200_26]
    def user_variables_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UserVariableApi#user_variables_post ..."
      end
      
      # resource path
      path = "/userVariables".sub('{format}','json')

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
        :return_type => 'inline_response_200_26')
      if Configuration.debugging
        Configuration.logger.debug "API called: UserVariableApi#user_variables_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get UserVariable
    # Get UserVariable
    # @param id id of UserVariable
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_26]
    def user_variables_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UserVariableApi#user_variables_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling user_variables_id_get" if id.nil?
      
      # resource path
      path = "/userVariables/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'inline_response_200_26')
      if Configuration.debugging
        Configuration.logger.debug "API called: UserVariableApi#user_variables_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update UserVariable
    # Update UserVariable
    # @param id id of UserVariable
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [UserVariable] :body UserVariable that should be updated
    # @return [inline_response_200_2]
    def user_variables_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UserVariableApi#user_variables_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling user_variables_id_put" if id.nil?
      
      # resource path
      path = "/userVariables/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: UserVariableApi#user_variables_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete UserVariable
    # Delete UserVariable
    # @param id id of UserVariable
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_2]
    def user_variables_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UserVariableApi#user_variables_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling user_variables_id_delete" if id.nil?
      
      # resource path
      path = "/userVariables/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: UserVariableApi#user_variables_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




