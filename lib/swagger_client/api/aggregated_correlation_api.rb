require "uri"

module SwaggerClient
  class AggregatedCorrelationApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all AggregatedCorrelations
    # Get all AggregatedCorrelations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Float] :correlation Pearson correlation coefficient between cause and effect measurements
    # @option opts [Integer] :cause_id Variable ID of the predictor variable for which the user desires correlations
    # @option opts [Integer] :effect_id Variable ID of the outcome variable for which the user desires correlations
    # @option opts [Integer] :onset_delay User estimated (or default number of seconds) after cause measurement before a perceivable effect is observed
    # @option opts [Integer] :duration_of_action Number of seconds over which the predictor variable event is expected to produce a perceivable effect following the onset delay
    # @option opts [Integer] :number_of_pairs Number of predictor/outcome data points used in the analysis
    # @option opts [Float] :value_predicting_high_outcome Predictor daily aggregated measurement value that predicts an above average effect measurement value (in default unit for predictor variable)
    # @option opts [Float] :value_predicting_low_outcome Predictor daily aggregated measurement value that predicts a below average effect measurement value (in default unit for outcome variable)
    # @option opts [Float] :optimal_pearson_product Optimal Pearson Product
    # @option opts [Integer] :number_of_users Number of users whose data was used in this aggregation
    # @option opts [Integer] :number_of_correlations Number of correlational analyses used in this aggregation
    # @option opts [Float] :statistical_significance A function of the effect size and sample size
    # @option opts [String] :cause_unit Abbreviated unit name for the predictor variable
    # @option opts [Integer] :cause_unit_id Unit ID for the predictor variable
    # @option opts [Integer] :cause_changes Number of times that the predictor time series changes
    # @option opts [Integer] :effect_changes Number of times that the predictor time series changes
    # @option opts [Float] :aggregate_qm_score Aggregated QM Score which is directly proportional with the relevance of each predictor or outcome
    # @option opts [String] :created_at Date at which the analysis was first performed
    # @option opts [String] :updated_at Date at which the analysis was last updated
    # @option opts [String] :status Indicates whether an analysis is up to date (UPDATED), needs to be updated (WAITING), or had an error (ERROR)
    # @option opts [String] :error_message Message describing any problems encountered during the analysis
    # @option opts [String] :last_successful_update_time Last Successful update time
    # @option opts [Float] :reverse_pearson_correlation_coefficient Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation
    # @option opts [Float] :predictive_pearson_correlation_coefficient Predictive Pearson Correlation Coefficient
    # @option opts [Integer] :limit Limit the number of results returned
    # @option opts [Integer] :offset Records from give Offset
    # @option opts [String] :sort Sort records by given field
    # @return [inline_response_200]
    def aggregated_correlations_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: AggregatedCorrelationApi#aggregated_correlations_get ..."
      end
      
      # resource path
      path = "/aggregatedCorrelations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'correlation'] = opts[:'correlation'] if opts[:'correlation']
      query_params[:'cause_id'] = opts[:'cause_id'] if opts[:'cause_id']
      query_params[:'effect_id'] = opts[:'effect_id'] if opts[:'effect_id']
      query_params[:'onset_delay'] = opts[:'onset_delay'] if opts[:'onset_delay']
      query_params[:'duration_of_action'] = opts[:'duration_of_action'] if opts[:'duration_of_action']
      query_params[:'number_of_pairs'] = opts[:'number_of_pairs'] if opts[:'number_of_pairs']
      query_params[:'value_predicting_high_outcome'] = opts[:'value_predicting_high_outcome'] if opts[:'value_predicting_high_outcome']
      query_params[:'value_predicting_low_outcome'] = opts[:'value_predicting_low_outcome'] if opts[:'value_predicting_low_outcome']
      query_params[:'optimal_pearson_product'] = opts[:'optimal_pearson_product'] if opts[:'optimal_pearson_product']
      query_params[:'number_of_users'] = opts[:'number_of_users'] if opts[:'number_of_users']
      query_params[:'number_of_correlations'] = opts[:'number_of_correlations'] if opts[:'number_of_correlations']
      query_params[:'statistical_significance'] = opts[:'statistical_significance'] if opts[:'statistical_significance']
      query_params[:'cause_unit'] = opts[:'cause_unit'] if opts[:'cause_unit']
      query_params[:'cause_unit_id'] = opts[:'cause_unit_id'] if opts[:'cause_unit_id']
      query_params[:'cause_changes'] = opts[:'cause_changes'] if opts[:'cause_changes']
      query_params[:'effect_changes'] = opts[:'effect_changes'] if opts[:'effect_changes']
      query_params[:'aggregate_qm_score'] = opts[:'aggregate_qm_score'] if opts[:'aggregate_qm_score']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
      query_params[:'status'] = opts[:'status'] if opts[:'status']
      query_params[:'error_message'] = opts[:'error_message'] if opts[:'error_message']
      query_params[:'last_successful_update_time'] = opts[:'last_successful_update_time'] if opts[:'last_successful_update_time']
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
        :return_type => 'inline_response_200')
      if Configuration.debugging
        Configuration.logger.debug "API called: AggregatedCorrelationApi#aggregated_correlations_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store AggregatedCorrelation
    # Store AggregatedCorrelation
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [AggregatedCorrelation] :body AggregatedCorrelation that should be stored
    # @return [inline_response_200_1]
    def aggregated_correlations_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: AggregatedCorrelationApi#aggregated_correlations_post ..."
      end
      
      # resource path
      path = "/aggregatedCorrelations".sub('{format}','json')

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
        :return_type => 'inline_response_200_1')
      if Configuration.debugging
        Configuration.logger.debug "API called: AggregatedCorrelationApi#aggregated_correlations_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get AggregatedCorrelation
    # Get AggregatedCorrelation
    # @param id id of AggregatedCorrelation
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_1]
    def aggregated_correlations_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: AggregatedCorrelationApi#aggregated_correlations_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling aggregated_correlations_id_get" if id.nil?
      
      # resource path
      path = "/aggregatedCorrelations/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'inline_response_200_1')
      if Configuration.debugging
        Configuration.logger.debug "API called: AggregatedCorrelationApi#aggregated_correlations_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update AggregatedCorrelation
    # Update AggregatedCorrelation
    # @param id id of AggregatedCorrelation
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [AggregatedCorrelation] :body AggregatedCorrelation that should be updated
    # @return [inline_response_200_2]
    def aggregated_correlations_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: AggregatedCorrelationApi#aggregated_correlations_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling aggregated_correlations_id_put" if id.nil?
      
      # resource path
      path = "/aggregatedCorrelations/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: AggregatedCorrelationApi#aggregated_correlations_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete AggregatedCorrelation
    # Delete AggregatedCorrelation
    # @param id id of AggregatedCorrelation
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_2]
    def aggregated_correlations_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: AggregatedCorrelationApi#aggregated_correlations_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling aggregated_correlations_id_delete" if id.nil?
      
      # resource path
      path = "/aggregatedCorrelations/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: AggregatedCorrelationApi#aggregated_correlations_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




