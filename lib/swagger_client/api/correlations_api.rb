require "uri"

module SwaggerClient
  class CorrelationsApi

    # Get correlations
    # Get correlations.&lt;br&gt;Supported filter parameters:&lt;br&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;correlationCoefficient&lt;/b&gt; - Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action&lt;/li&gt;&lt;li&gt;&lt;b&gt;onsetDelay&lt;/b&gt; - The number of seconds which pass following a cause measurement before an effect would likely be observed.&lt;/li&gt;&lt;li&gt;&lt;b&gt;durationOfAction&lt;/b&gt; - The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.&lt;/li&gt;&lt;li&gt;&lt;b&gt;lastUpdated&lt;/b&gt; - The time that this measurement was last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;&lt;/li&gt;&lt;/ul&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :effect ORIGINAL variable name of the effect variable for which the user desires correlations
    # @option opts [String] :cause ORIGINAL variable name of the cause variable for which the user desires correlations
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
    # @option opts [Integer] :offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
    # @return [Array<Correlation>]
    def self.correlations_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CorrelationsApi#correlations_get ..."
      end
      
      # resource path
      path = "/correlations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'effect'] = opts[:'effect'] if opts[:'effect']
      query_params[:'cause'] = opts[:'cause'] if opts[:'cause']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'sort'] = opts[:'sort'] if opts[:'sort']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Array<Correlation>')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CorrelationsApi#correlations_get. Result: #{result.inspect}"
      end
      result
    end

    # Get average correlations for variables containing search term
    # Returns the average correlations from all users for all public variables that contain the characters in the search query. Returns average of all users public variable correlations with a specified cause or effect.
    # @param search Name of the variable that you want to know the causes or effects of.
    # @param effect_or_cause Specifies whether to return the effects or causes of the searched variable.
    # @param [Hash] opts the optional parameters
    # @return [Array<Correlation>]
    def self.public_correlations_search_search_get(search, effect_or_cause, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CorrelationsApi#public_correlations_search_search_get ..."
      end
      
      # verify the required parameter 'search' is set
      fail "Missing the required parameter 'search' when calling public_correlations_search_search_get" if search.nil?
      
      # verify the required parameter 'effect_or_cause' is set
      fail "Missing the required parameter 'effect_or_cause' when calling public_correlations_search_search_get" if effect_or_cause.nil?
      
      # resource path
      path = "/public/correlations/search/{search}".sub('{format}','json').sub('{' + 'search' + '}', search.to_s)

      # query parameters
      query_params = {}
      query_params[:'effectOrCause'] = effect_or_cause

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Array<Correlation>')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CorrelationsApi#public_correlations_search_search_get. Result: #{result.inspect}"
      end
      result
    end

    # Add correlation or/and vote for it
    # Add correlation or/and vote for it
    # @param body Provides correlation data
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.v1_correlations_post(body, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CorrelationsApi#v1_correlations_post ..."
      end
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling v1_correlations_post" if body.nil?
      
      # resource path
      path = "/v1/correlations".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(body)
      

      auth_names = ['oauth2']
      Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CorrelationsApi#v1_correlations_post"
      end
      nil
    end

    # Search user correlations for a given effect
    # Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \&quot;include_public\&quot; is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
    # @param organization_id Organization ID
    # @param user_id User id
    # @param variable_name Effect variable name
    # @param organization_token Organization access token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include_public Include bublic correlations, Can be \&quot;1\&quot; or empty.
    # @return [Array<Correlation>]
    def self.v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get(organization_id, user_id, variable_name, organization_token, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CorrelationsApi#v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get ..."
      end
      
      # verify the required parameter 'organization_id' is set
      fail "Missing the required parameter 'organization_id' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get" if organization_id.nil?
      
      # verify the required parameter 'user_id' is set
      fail "Missing the required parameter 'user_id' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get" if user_id.nil?
      
      # verify the required parameter 'variable_name' is set
      fail "Missing the required parameter 'variable_name' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get" if variable_name.nil?
      
      # verify the required parameter 'organization_token' is set
      fail "Missing the required parameter 'organization_token' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get" if organization_token.nil?
      
      # resource path
      path = "/v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/causes".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'organization_token'] = organization_token
      query_params[:'include_public'] = opts[:'include_public'] if opts[:'include_public']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Array<Correlation>')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CorrelationsApi#v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get. Result: #{result.inspect}"
      end
      result
    end

    # Search user correlations for a given cause
    # Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \&quot;include_public\&quot; is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
    # @param organization_id Organization ID
    # @param user_id User id
    # @param variable_name Cause variable name
    # @param organization_token Organization access token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include_public Include bublic correlations, Can be \&quot;1\&quot; or empty.
    # @return [Array<CommonResponse>]
    def self.v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get(organization_id, user_id, variable_name, organization_token, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CorrelationsApi#v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get ..."
      end
      
      # verify the required parameter 'organization_id' is set
      fail "Missing the required parameter 'organization_id' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get" if organization_id.nil?
      
      # verify the required parameter 'user_id' is set
      fail "Missing the required parameter 'user_id' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get" if user_id.nil?
      
      # verify the required parameter 'variable_name' is set
      fail "Missing the required parameter 'variable_name' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get" if variable_name.nil?
      
      # verify the required parameter 'organization_token' is set
      fail "Missing the required parameter 'organization_token' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get" if organization_token.nil?
      
      # resource path
      path = "/v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/effects".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'organization_token'] = organization_token
      query_params[:'include_public'] = opts[:'include_public'] if opts[:'include_public']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Array<CommonResponse>')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CorrelationsApi#v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get. Result: #{result.inspect}"
      end
      result
    end

    # Search user correlations for a given effect
    # Returns average of all correlations and votes for all user cause variables for a given effect
    # @param variable_name Effect variable name
    # @param [Hash] opts the optional parameters
    # @return [Array<Correlation>]
    def self.v1_variables_variable_name_causes_get(variable_name, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CorrelationsApi#v1_variables_variable_name_causes_get ..."
      end
      
      # verify the required parameter 'variable_name' is set
      fail "Missing the required parameter 'variable_name' when calling v1_variables_variable_name_causes_get" if variable_name.nil?
      
      # resource path
      path = "/v1/variables/{variableName}/causes".sub('{format}','json').sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Array<Correlation>')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CorrelationsApi#v1_variables_variable_name_causes_get. Result: #{result.inspect}"
      end
      result
    end

    # Search user correlations for a given cause
    # Returns average of all correlations and votes for all user effect variables for a given cause
    # @param variable_name Cause variable name
    # @param [Hash] opts the optional parameters
    # @return [Array<Correlation>]
    def self.v1_variables_variable_name_effects_get(variable_name, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CorrelationsApi#v1_variables_variable_name_effects_get ..."
      end
      
      # verify the required parameter 'variable_name' is set
      fail "Missing the required parameter 'variable_name' when calling v1_variables_variable_name_effects_get" if variable_name.nil?
      
      # resource path
      path = "/v1/variables/{variableName}/effects".sub('{format}','json').sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Array<Correlation>')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CorrelationsApi#v1_variables_variable_name_effects_get. Result: #{result.inspect}"
      end
      result
    end

    # Search public correlations for a given effect
    # Returns average of all correlations and votes for all public cause variables for a given effect
    # @param variable_name Effect variable name
    # @param [Hash] opts the optional parameters
    # @return [Array<Correlation>]
    def self.v1_variables_variable_name_public_causes_get(variable_name, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CorrelationsApi#v1_variables_variable_name_public_causes_get ..."
      end
      
      # verify the required parameter 'variable_name' is set
      fail "Missing the required parameter 'variable_name' when calling v1_variables_variable_name_public_causes_get" if variable_name.nil?
      
      # resource path
      path = "/v1/variables/{variableName}/public/causes".sub('{format}','json').sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Array<Correlation>')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CorrelationsApi#v1_variables_variable_name_public_causes_get. Result: #{result.inspect}"
      end
      result
    end

    # Search public correlations for a given cause
    # Returns average of all correlations and votes for all public cause variables for a given cause
    # @param variable_name Cause variable name
    # @param [Hash] opts the optional parameters
    # @return [Array<Correlation>]
    def self.v1_variables_variable_name_public_effects_get(variable_name, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CorrelationsApi#v1_variables_variable_name_public_effects_get ..."
      end
      
      # verify the required parameter 'variable_name' is set
      fail "Missing the required parameter 'variable_name' when calling v1_variables_variable_name_public_effects_get" if variable_name.nil?
      
      # resource path
      path = "/v1/variables/{variableName}/public/effects".sub('{format}','json').sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('Array<Correlation>')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CorrelationsApi#v1_variables_variable_name_public_effects_get. Result: #{result.inspect}"
      end
      result
    end

    # Post or update vote
    # This is to enable users to indicate their opinion on the plausibility of a causal relationship between a treatment and outcome. QuantiModo incorporates crowd-sourced plausibility estimations into their algorithm. This is done allowing user to indicate their view of the plausibility of each relationship with thumbs up/down buttons placed next to each prediction.
    # @param cause Cause variable name
    # @param effect Effect variable name
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :vote Vote: 0 (for implausible) or 1 (for plausible)
    # @return [CommonResponse]
    def self.v1_votes_post(cause, effect, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CorrelationsApi#v1_votes_post ..."
      end
      
      # verify the required parameter 'cause' is set
      fail "Missing the required parameter 'cause' when calling v1_votes_post" if cause.nil?
      
      # verify the required parameter 'effect' is set
      fail "Missing the required parameter 'effect' when calling v1_votes_post" if effect.nil?
      
      # resource path
      path = "/v1/votes".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cause'] = cause
      query_params[:'effect'] = effect
      query_params[:'vote'] = opts[:'vote'] if opts[:'vote']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('CommonResponse')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CorrelationsApi#v1_votes_post. Result: #{result.inspect}"
      end
      result
    end

    # Delete vote
    # Delete previously posted vote
    # @param cause Cause variable name
    # @param effect Effect variable name
    # @param [Hash] opts the optional parameters
    # @return [CommonResponse]
    def self.v1_votes_delete_post(cause, effect, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: CorrelationsApi#v1_votes_delete_post ..."
      end
      
      # verify the required parameter 'cause' is set
      fail "Missing the required parameter 'cause' when calling v1_votes_delete_post" if cause.nil?
      
      # verify the required parameter 'effect' is set
      fail "Missing the required parameter 'effect' when calling v1_votes_delete_post" if effect.nil?
      
      # resource path
      path = "/v1/votes/delete".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cause'] = cause
      query_params[:'effect'] = effect

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('CommonResponse')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: CorrelationsApi#v1_votes_delete_post. Result: #{result.inspect}"
      end
      result
    end
  end
end
