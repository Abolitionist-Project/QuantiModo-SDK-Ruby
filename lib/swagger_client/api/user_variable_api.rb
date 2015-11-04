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
    # @option opts [String] :client_id client_id
    # @option opts [Integer] :variable_id variable_id
    # @option opts [Integer] :default_unit_id default_unit_id
    # @option opts [Float] :minimum_allowed_value minimum_allowed_value
    # @option opts [Float] :maximum_allowed_value maximum_allowed_value
    # @option opts [Float] :filling_value filling_value
    # @option opts [Integer] :join_with join_with
    # @option opts [Integer] :onset_delay onset_delay
    # @option opts [Integer] :duration_of_action duration_of_action
    # @option opts [Integer] :variable_category_id variable_category_id
    # @option opts [Integer] :updated updated
    # @option opts [Integer] :public public
    # @option opts [BOOLEAN] :cause_only cause_only
    # @option opts [String] :filling_type filling_type
    # @option opts [Integer] :number_of_measurements number_of_measurements
    # @option opts [Integer] :number_of_processed_measurements number_of_processed_measurements
    # @option opts [Integer] :measurements_at_last_analysis measurements_at_last_analysis
    # @option opts [Integer] :last_unit_id last_unit_id
    # @option opts [Integer] :last_original_unit_id last_original_unit_id
    # @option opts [Integer] :last_original_value last_original_value
    # @option opts [Float] :last_value last_value
    # @option opts [Integer] :last_source_id last_source_id
    # @option opts [Integer] :number_of_correlations number_of_correlations
    # @option opts [String] :status status
    # @option opts [String] :error_message error_message
    # @option opts [String] :last_successful_update_time last_successful_update_time
    # @option opts [Float] :standard_deviation standard_deviation
    # @option opts [Float] :variance variance
    # @option opts [Float] :minimum_recorded_daily_value minimum_recorded_daily_value
    # @option opts [Float] :maximum_recorded_daily_value maximum_recorded_daily_value
    # @option opts [Float] :mean mean
    # @option opts [Float] :median median
    # @option opts [Integer] :most_common_unit_id most_common_unit_id
    # @option opts [Float] :most_common_value most_common_value
    # @option opts [Float] :number_of_unique_daily_values number_of_unique_daily_values
    # @option opts [Integer] :number_of_changes number_of_changes
    # @option opts [Float] :skewness skewness
    # @option opts [Float] :kurtosis kurtosis
    # @option opts [Float] :latitude latitude
    # @option opts [Float] :longitude longitude
    # @option opts [String] :location location
    # @option opts [String] :created_at created_at
    # @option opts [String] :updated_at updated_at
    # @option opts [BOOLEAN] :outcome outcome
    # @option opts [String] :sources sources
    # @option opts [Integer] :earliest_source_time earliest_source_time
    # @option opts [Integer] :latest_source_time latest_source_time
    # @option opts [Integer] :earliest_measurement_time earliest_measurement_time
    # @option opts [Integer] :latest_measurement_time latest_measurement_time
    # @option opts [Integer] :earliest_filling_time earliest_filling_time
    # @option opts [Integer] :latest_filling_time latest_filling_time
    # @option opts [Integer] :limit limit
    # @option opts [Integer] :offset offset
    # @option opts [String] :sort sort
    # @return [inline_response_200_21]
    def user_variables_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UserVariableApi#user_variables_get ..."
      end
      
      # resource path
      path = "/userVariables".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'client_id'] = opts[:'client_id'] if opts[:'client_id']
      query_params[:'variable_id'] = opts[:'variable_id'] if opts[:'variable_id']
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
      query_params[:'last_source_id'] = opts[:'last_source_id'] if opts[:'last_source_id']
      query_params[:'number_of_correlations'] = opts[:'number_of_correlations'] if opts[:'number_of_correlations']
      query_params[:'status'] = opts[:'status'] if opts[:'status']
      query_params[:'error_message'] = opts[:'error_message'] if opts[:'error_message']
      query_params[:'last_successful_update_time'] = opts[:'last_successful_update_time'] if opts[:'last_successful_update_time']
      query_params[:'standard_deviation'] = opts[:'standard_deviation'] if opts[:'standard_deviation']
      query_params[:'variance'] = opts[:'variance'] if opts[:'variance']
      query_params[:'minimum_recorded_daily_value'] = opts[:'minimum_recorded_daily_value'] if opts[:'minimum_recorded_daily_value']
      query_params[:'maximum_recorded_daily_value'] = opts[:'maximum_recorded_daily_value'] if opts[:'maximum_recorded_daily_value']
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
      

      auth_names = []
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_21')
      if Configuration.debugging
        Configuration.logger.debug "API called: UserVariableApi#user_variables_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store UserVariable
    # Store UserVariable
    # @param [Hash] opts the optional parameters
    # @option opts [UserVariable] :body UserVariable that should be stored
    # @return [inline_response_200_22]
    def user_variables_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UserVariableApi#user_variables_post ..."
      end
      
      # resource path
      path = "/userVariables".sub('{format}','json')

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
        :return_type => 'inline_response_200_22')
      if Configuration.debugging
        Configuration.logger.debug "API called: UserVariableApi#user_variables_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get UserVariable
    # Get UserVariable
    # @param id id of UserVariable
    # @param [Hash] opts the optional parameters
    # @return [inline_response_200_22]
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
        :return_type => 'inline_response_200_22')
      if Configuration.debugging
        Configuration.logger.debug "API called: UserVariableApi#user_variables_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update UserVariable
    # Update UserVariable
    # @param id id of UserVariable
    # @param [Hash] opts the optional parameters
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
        Configuration.logger.debug "API called: UserVariableApi#user_variables_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete UserVariable
    # Delete UserVariable
    # @param id id of UserVariable
    # @param [Hash] opts the optional parameters
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
        Configuration.logger.debug "API called: UserVariableApi#user_variables_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




