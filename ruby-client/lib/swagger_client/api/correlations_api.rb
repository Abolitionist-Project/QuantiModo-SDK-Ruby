require "uri"

module SwaggerClient
  class CorrelationsApi
    basePath = "https://localhost/api"
    # apiInvoker = APIInvoker

    # Get correlations
    # Get correlations
    # @param [Hash] opts the optional parameters
    # @option opts [string] :effect ORIGINAL variable name of the effect variable for which the user desires correlations
    # @option opts [string] :cause ORIGINAL variable name of the cause variable for which the user desires correlations
    # @return [array[Correlation]]
    def self.correlations_get(opts = {})
      

      # resource path
      path = "/correlations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'effect'] = opts[:'effect'] if opts[:'effect']
      query_params[:'cause'] = opts[:'cause'] if opts[:'cause']

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
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body}).make.body
      response.map {|response| obj = Correlation.new() and obj.build_from_hash(response) }
    end

    # Get average correlations for variables containing search term
    # Returns the average correlations from all users for all public variables that contain the characters in the search query. Returns average of all users public variable correlations with a specified cause or effect.
    # @param search Name of the variable that you want to know the causes or effects of.
    # @param effect_or_cause Specifies whether to return the effects or causes of the searched variable.
    # @param [Hash] opts the optional parameters
    # @return [array[Correlation]]
    def self.public_correlations_search_search_get(search, effect_or_cause, opts = {})
      
      # verify the required parameter 'search' is set
      raise "Missing the required parameter 'search' when calling public_correlations_search_search_get" if search.nil?
      
      # verify the required parameter 'effect_or_cause' is set
      raise "Missing the required parameter 'effect_or_cause' when calling public_correlations_search_search_get" if effect_or_cause.nil?
      

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
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body}).make.body
      response.map {|response| obj = Correlation.new() and obj.build_from_hash(response) }
    end

    # Add correlation or/and vote for it
    # Add correlation or/and vote for it
    # @param body Provides correlation data
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.v1_correlations_post(body, opts = {})
      
      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling v1_correlations_post" if body.nil?
      

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
      

      Swagger::Request.new(:POST, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body}).make
      nil
    end

    # Search user correlations for a given effect
    # Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \&quot;include_public\&quot; is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
    # @param organization_id Organization ID
    # @param user_id User id
    # @param variable_name Effect variable name
    # @param organization_token Organization access token
    # @param [Hash] opts the optional parameters
    # @option opts [string] :include_public Include bublic correlations, Can be \&quot;1\&quot; or empty.
    # @return [array[Correlation]]
    def self.v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get(organization_id, user_id, variable_name, organization_token, opts = {})
      
      # verify the required parameter 'organization_id' is set
      raise "Missing the required parameter 'organization_id' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get" if organization_id.nil?
      
      # verify the required parameter 'user_id' is set
      raise "Missing the required parameter 'user_id' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get" if user_id.nil?
      
      # verify the required parameter 'variable_name' is set
      raise "Missing the required parameter 'variable_name' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get" if variable_name.nil?
      
      # verify the required parameter 'organization_token' is set
      raise "Missing the required parameter 'organization_token' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get" if organization_token.nil?
      

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
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body}).make.body
      response.map {|response| obj = Correlation.new() and obj.build_from_hash(response) }
    end

    # Search user correlations for a given cause
    # Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \&quot;include_public\&quot; is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
    # @param organization_id Organization ID
    # @param user_id User id
    # @param variable_name Cause variable name
    # @param organization_token Organization access token
    # @param [Hash] opts the optional parameters
    # @option opts [string] :include_public Include bublic correlations, Can be \&quot;1\&quot; or empty.
    # @return [array[Correlation]]
    def self.v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get(organization_id, user_id, variable_name, organization_token, opts = {})
      
      # verify the required parameter 'organization_id' is set
      raise "Missing the required parameter 'organization_id' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get" if organization_id.nil?
      
      # verify the required parameter 'user_id' is set
      raise "Missing the required parameter 'user_id' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get" if user_id.nil?
      
      # verify the required parameter 'variable_name' is set
      raise "Missing the required parameter 'variable_name' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get" if variable_name.nil?
      
      # verify the required parameter 'organization_token' is set
      raise "Missing the required parameter 'organization_token' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get" if organization_token.nil?
      

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
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body}).make.body
      response.map {|response| obj = Correlation.new() and obj.build_from_hash(response) }
    end

    # Search user correlations for a given effect
    # Returns average of all correlations and votes for all user cause variables for a given effect
    # @param variable_name Effect variable name
    # @param [Hash] opts the optional parameters
    # @return [array[Correlation]]
    def self.v1_variables_variable_name_causes_get(variable_name, opts = {})
      
      # verify the required parameter 'variable_name' is set
      raise "Missing the required parameter 'variable_name' when calling v1_variables_variable_name_causes_get" if variable_name.nil?
      

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
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body}).make.body
      response.map {|response| obj = Correlation.new() and obj.build_from_hash(response) }
    end

    # Search user correlations for a given cause
    # Returns average of all correlations and votes for all user effect variables for a given cause
    # @param variable_name Cause variable name
    # @param [Hash] opts the optional parameters
    # @return [array[Correlation]]
    def self.v1_variables_variable_name_effects_get(variable_name, opts = {})
      
      # verify the required parameter 'variable_name' is set
      raise "Missing the required parameter 'variable_name' when calling v1_variables_variable_name_effects_get" if variable_name.nil?
      

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
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body}).make.body
      response.map {|response| obj = Correlation.new() and obj.build_from_hash(response) }
    end

    # Search public correlations for a given effect
    # Returns average of all correlations and votes for all public cause variables for a given effect
    # @param variable_name Effect variable name
    # @param [Hash] opts the optional parameters
    # @return [array[Correlation]]
    def self.v1_variables_variable_name_public_causes_get(variable_name, opts = {})
      
      # verify the required parameter 'variable_name' is set
      raise "Missing the required parameter 'variable_name' when calling v1_variables_variable_name_public_causes_get" if variable_name.nil?
      

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
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body}).make.body
      response.map {|response| obj = Correlation.new() and obj.build_from_hash(response) }
    end

    # Search public correlations for a given cause
    # Returns average of all correlations and votes for all public cause variables for a given cause
    # @param variable_name Cause variable name
    # @param [Hash] opts the optional parameters
    # @return [array[Correlation]]
    def self.v1_variables_variable_name_public_effects_get(variable_name, opts = {})
      
      # verify the required parameter 'variable_name' is set
      raise "Missing the required parameter 'variable_name' when calling v1_variables_variable_name_public_effects_get" if variable_name.nil?
      

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
      

      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body}).make.body
      response.map {|response| obj = Correlation.new() and obj.build_from_hash(response) }
    end
  end
end
