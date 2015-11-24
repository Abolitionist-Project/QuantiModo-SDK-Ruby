require "uri"

module SwaggerClient
  class CorrelationApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all Correlations
    # Get all Correlations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Integer] :timestamp Time at which correlation was calculated
    # @option opts [Integer] :user_id ID of user that owns this correlation
    # @option opts [Float] :correlation Pearson correlation coefficient between cause and effect measurements
    # @option opts [Integer] :cause_id variable ID of the predictor variable for which the user desires correlations
    # @option opts [Integer] :effect_id variable ID of the outcome variable for which the user desires correlations
    # @option opts [Integer] :onset_delay User estimated or default time after cause measurement before a perceivable effect is observed
    # @option opts [Integer] :duration_of_action Time over which the cause is expected to produce a perceivable effect following the onset delay
    # @option opts [Integer] :number_of_pairs Number of points that went into the correlation calculation
    # @option opts [Float] :value_predicting_high_outcome cause value that predicts an above average effect value (in default unit for predictor variable)
    # @option opts [Float] :value_predicting_low_outcome cause value that predicts a below average effect value (in default unit for predictor variable)
    # @option opts [Float] :optimal_pearson_product Optimal Pearson Product
    # @option opts [Float] :vote Vote
    # @option opts [Float] :statistical_significance A function of the effect size and sample size
    # @option opts [String] :cause_unit Unit of the predictor variable
    # @option opts [Integer] :cause_unit_id Unit ID of the predictor variable
    # @option opts [Integer] :cause_changes Cause changes
    # @option opts [Integer] :effect_changes Effect changes
    # @option opts [Float] :qm_score QM Score
    # @option opts [String] :error error
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record in the database was last updated. Use ISO 8601 datetime format
    # @option opts [Float] :reverse_pearson_correlation_coefficient Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation
    # @option opts [Float] :predictive_pearson_correlation_coefficient Predictive Pearson Correlation Coefficient
    # @option opts [Integer] :limit Limit the number of results returned
    # @option opts [Integer] :offset Records from give Offset
    # @option opts [String] :sort Sort records by given field
    # @return [inline_response_200_9]
    def correlations_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CorrelationApi#correlations_get ..."
      end
      
      # resource path
      path = "/correlations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'timestamp'] = opts[:'timestamp'] if opts[:'timestamp']
      query_params[:'user_id'] = opts[:'user_id'] if opts[:'user_id']
      query_params[:'correlation'] = opts[:'correlation'] if opts[:'correlation']
      query_params[:'cause_id'] = opts[:'cause_id'] if opts[:'cause_id']
      query_params[:'effect_id'] = opts[:'effect_id'] if opts[:'effect_id']
      query_params[:'onset_delay'] = opts[:'onset_delay'] if opts[:'onset_delay']
      query_params[:'duration_of_action'] = opts[:'duration_of_action'] if opts[:'duration_of_action']
      query_params[:'number_of_pairs'] = opts[:'number_of_pairs'] if opts[:'number_of_pairs']
      query_params[:'value_predicting_high_outcome'] = opts[:'value_predicting_high_outcome'] if opts[:'value_predicting_high_outcome']
      query_params[:'value_predicting_low_outcome'] = opts[:'value_predicting_low_outcome'] if opts[:'value_predicting_low_outcome']
      query_params[:'optimal_pearson_product'] = opts[:'optimal_pearson_product'] if opts[:'optimal_pearson_product']
      query_params[:'vote'] = opts[:'vote'] if opts[:'vote']
      query_params[:'statistical_significance'] = opts[:'statistical_significance'] if opts[:'statistical_significance']
      query_params[:'cause_unit'] = opts[:'cause_unit'] if opts[:'cause_unit']
      query_params[:'cause_unit_id'] = opts[:'cause_unit_id'] if opts[:'cause_unit_id']
      query_params[:'cause_changes'] = opts[:'cause_changes'] if opts[:'cause_changes']
      query_params[:'effect_changes'] = opts[:'effect_changes'] if opts[:'effect_changes']
      query_params[:'qm_score'] = opts[:'qm_score'] if opts[:'qm_score']
      query_params[:'error'] = opts[:'error'] if opts[:'error']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
      query_params[:'reverse_pearson_correlation_coefficient'] = opts[:'reverse_pearson_correlation_coefficient'] if opts[:'reverse_pearson_correlation_coefficient']
      query_params[:'predictive_pearson_correlation_coefficient'] = opts[:'predictive_pearson_correlation_coefficient'] if opts[:'predictive_pearson_correlation_coefficient']
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
        :return_type => 'inline_response_200_9')
      if Configuration.debugging
        Configuration.logger.debug "API called: CorrelationApi#correlations_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store Correlation
    # Store Correlation
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Correlation] :body Correlation that should be stored
    # @return [inline_response_200_10]
    def correlations_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CorrelationApi#correlations_post ..."
      end
      
      # resource path
      path = "/correlations".sub('{format}','json')

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
        :return_type => 'inline_response_200_10')
      if Configuration.debugging
        Configuration.logger.debug "API called: CorrelationApi#correlations_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Correlation Details
    # Get Correlation
    # @param id id of Correlation
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_10]
    def correlations_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CorrelationApi#correlations_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling correlations_id_get" if id.nil?
      
      # resource path
      path = "/correlations/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'inline_response_200_10')
      if Configuration.debugging
        Configuration.logger.debug "API called: CorrelationApi#correlations_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update Correlation
    # Update Correlation
    # @param id id of Correlation
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Correlation] :body Correlation that should be updated
    # @return [inline_response_200_2]
    def correlations_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CorrelationApi#correlations_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling correlations_id_put" if id.nil?
      
      # resource path
      path = "/correlations/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: CorrelationApi#correlations_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete Correlation
    # Delete Correlation
    # @param id id of Correlation
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_2]
    def correlations_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: CorrelationApi#correlations_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling correlations_id_delete" if id.nil?
      
      # resource path
      path = "/correlations/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: CorrelationApi#correlations_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




