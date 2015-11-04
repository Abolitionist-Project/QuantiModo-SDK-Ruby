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
    # @option opts [Float] :correlation correlation
    # @option opts [Integer] :cause_id cause_id
    # @option opts [Integer] :effect_id effect_id
    # @option opts [Integer] :onset_delay onset_delay
    # @option opts [Integer] :duration_of_action duration_of_action
    # @option opts [Integer] :number_of_pairs number_of_pairs
    # @option opts [Float] :value_predicting_high_outcome value_predicting_high_outcome
    # @option opts [Float] :value_predicting_low_outcome value_predicting_low_outcome
    # @option opts [Float] :optimal_pearson_product optimal_pearson_product
    # @option opts [Float] :vote vote
    # @option opts [Integer] :number_of_users number_of_users
    # @option opts [Integer] :number_of_correlations number_of_correlations
    # @option opts [Float] :statistical_significance statistical_significance
    # @option opts [String] :cause_unit cause_unit
    # @option opts [Integer] :cause_unit_id cause_unit_id
    # @option opts [Integer] :cause_changes cause_changes
    # @option opts [Integer] :effect_changes effect_changes
    # @option opts [Float] :aggregate_qm_score aggregate_qm_score
    # @option opts [String] :created_at created_at
    # @option opts [String] :updated_at updated_at
    # @option opts [String] :status status
    # @option opts [String] :error_message error_message
    # @option opts [String] :last_successful_update_time last_successful_update_time
    # @option opts [Float] :reverse_pearson_correlation_coefficient reverse_pearson_correlation_coefficient
    # @option opts [Float] :predictive_pearson_correlation_coefficient predictive_pearson_correlation_coefficient
    # @option opts [Integer] :limit limit
    # @option opts [Integer] :offset offset
    # @option opts [String] :sort sort
    # @return [inline_response_200]
    def aggregated_correlations_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: AggregatedCorrelationApi#aggregated_correlations_get ..."
      end
      
      # resource path
      path = "/aggregatedCorrelations".sub('{format}','json')

      # query parameters
      query_params = {}
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
      

      auth_names = []
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
        Configuration.logger.debug "API called: AggregatedCorrelationApi#aggregated_correlations_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete AggregatedCorrelation
    # Delete AggregatedCorrelation
    # @param id id of AggregatedCorrelation
    # @param [Hash] opts the optional parameters
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
        Configuration.logger.debug "API called: AggregatedCorrelationApi#aggregated_correlations_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




