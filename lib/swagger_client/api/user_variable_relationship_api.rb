require "uri"

module SwaggerClient
  class UserVariableRelationshipApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get all UserVariableRelationships
    # Get all UserVariableRelationships
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Integer] :id id
    # @option opts [String] :confidence_level Our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors
    # @option opts [Float] :confidence_score A quantitative representation of our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors
    # @option opts [String] :direction Direction is positive if higher predictor values generally precede higher outcome values. Direction is negative if higher predictor values generally precede lower outcome values.
    # @option opts [Integer] :duration_of_action Estimated number of seconds following the onset delay in which a stimulus produces a perceivable effect
    # @option opts [String] :error_message error_message
    # @option opts [Integer] :onset_delay Estimated number of seconds that pass before a stimulus produces a perceivable effect
    # @option opts [Integer] :outcome_variable_id Variable ID for the outcome variable
    # @option opts [Integer] :predictor_variable_id Variable ID for the predictor variable
    # @option opts [Integer] :predictor_unit_id ID for default unit of the predictor variable
    # @option opts [Float] :sinn_rank A value representative of the relevance of this predictor relative to other predictors of this outcome.  Usually used for relevancy sorting.
    # @option opts [String] :strength_level Can be weak, medium, or strong based on the size of the effect which the predictor appears to have on the outcome relative to other variable relationship strength scores.
    # @option opts [Float] :strength_score A value represented to the size of the effect which the predictor appears to have on the outcome.
    # @option opts [Integer] :user_id user_id
    # @option opts [String] :vote vote
    # @option opts [Float] :value_predicting_high_outcome Value for the predictor variable (in it&#39;s default unit) which typically precedes an above average outcome value
    # @option opts [Float] :value_predicting_low_outcome Value for the predictor variable (in it&#39;s default unit) which typically precedes a below average outcome value
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_23]
    def user_variable_relationships_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UserVariableRelationshipApi#user_variable_relationships_get ..."
      end
      
      # resource path
      path = "/userVariableRelationships".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'id'] = opts[:'id'] if opts[:'id']
      query_params[:'confidence_level'] = opts[:'confidence_level'] if opts[:'confidence_level']
      query_params[:'confidence_score'] = opts[:'confidence_score'] if opts[:'confidence_score']
      query_params[:'direction'] = opts[:'direction'] if opts[:'direction']
      query_params[:'duration_of_action'] = opts[:'duration_of_action'] if opts[:'duration_of_action']
      query_params[:'error_message'] = opts[:'error_message'] if opts[:'error_message']
      query_params[:'onset_delay'] = opts[:'onset_delay'] if opts[:'onset_delay']
      query_params[:'outcome_variable_id'] = opts[:'outcome_variable_id'] if opts[:'outcome_variable_id']
      query_params[:'predictor_variable_id'] = opts[:'predictor_variable_id'] if opts[:'predictor_variable_id']
      query_params[:'predictor_unit_id'] = opts[:'predictor_unit_id'] if opts[:'predictor_unit_id']
      query_params[:'sinn_rank'] = opts[:'sinn_rank'] if opts[:'sinn_rank']
      query_params[:'strength_level'] = opts[:'strength_level'] if opts[:'strength_level']
      query_params[:'strength_score'] = opts[:'strength_score'] if opts[:'strength_score']
      query_params[:'user_id'] = opts[:'user_id'] if opts[:'user_id']
      query_params[:'vote'] = opts[:'vote'] if opts[:'vote']
      query_params[:'value_predicting_high_outcome'] = opts[:'value_predicting_high_outcome'] if opts[:'value_predicting_high_outcome']
      query_params[:'value_predicting_low_outcome'] = opts[:'value_predicting_low_outcome'] if opts[:'value_predicting_low_outcome']
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
        :return_type => 'inline_response_200_23')
      if Configuration.debugging
        Configuration.logger.debug "API called: UserVariableRelationshipApi#user_variable_relationships_get. Result: #{result.inspect}"
      end
      return result
    end

    # Store UserVariableRelationship
    # Store UserVariableRelationship
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [UserVariableRelationship] :body UserVariableRelationship that should be stored
    # @return [inline_response_200_24]
    def user_variable_relationships_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UserVariableRelationshipApi#user_variable_relationships_post ..."
      end
      
      # resource path
      path = "/userVariableRelationships".sub('{format}','json')

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
        :return_type => 'inline_response_200_24')
      if Configuration.debugging
        Configuration.logger.debug "API called: UserVariableRelationshipApi#user_variable_relationships_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get UserVariableRelationship
    # Get UserVariableRelationship
    # @param id id of UserVariableRelationship
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_24]
    def user_variable_relationships_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UserVariableRelationshipApi#user_variable_relationships_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling user_variable_relationships_id_get" if id.nil?
      
      # resource path
      path = "/userVariableRelationships/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'inline_response_200_24')
      if Configuration.debugging
        Configuration.logger.debug "API called: UserVariableRelationshipApi#user_variable_relationships_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update UserVariableRelationship
    # Update UserVariableRelationship
    # @param id id of UserVariableRelationship
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [UserVariableRelationship] :body UserVariableRelationship that should be updated
    # @return [inline_response_200_2]
    def user_variable_relationships_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UserVariableRelationshipApi#user_variable_relationships_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling user_variable_relationships_id_put" if id.nil?
      
      # resource path
      path = "/userVariableRelationships/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: UserVariableRelationshipApi#user_variable_relationships_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete UserVariableRelationship
    # Delete UserVariableRelationship
    # @param id id of UserVariableRelationship
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_2]
    def user_variable_relationships_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UserVariableRelationshipApi#user_variable_relationships_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling user_variable_relationships_id_delete" if id.nil?
      
      # resource path
      path = "/userVariableRelationships/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        Configuration.logger.debug "API called: UserVariableRelationshipApi#user_variable_relationships_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




