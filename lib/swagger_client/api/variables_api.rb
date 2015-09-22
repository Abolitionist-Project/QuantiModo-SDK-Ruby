require "uri"

module SwaggerClient
  class VariablesApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get public variables
    # This endpoint retrieves an array of all public variables. Public variables are things like foods, medications, symptoms, conditions, and anything not unique to a particular user. For instance, a telephone number or name would not be a public variable.
    # @param [Hash] opts the optional parameters
    # @return [Variable]
    def v1_public_variables_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariablesApi#v1_public_variables_get ..."
      end
      
      # resource path
      path = "/v1/public/variables".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Variable')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariablesApi#v1_public_variables_get. Result: #{result.inspect}"
      end
      return result
    end

    # Get top 5 PUBLIC variables with the most correlations
    # Get top 5 PUBLIC variables with the most correlations containing the entered search characters. For example, search for &#39;mood&#39; as an effect. Since &#39;Overall Mood&#39; has a lot of correlations with other variables, it should be in the autocomplete list.&lt;br&gt;Supported filter parameters:&lt;br&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;category&lt;/b&gt; - Category of Variable&lt;/li&gt;&lt;/ul&gt;&lt;br&gt;
    # @param search Search query can be some fraction of a variable name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :effect_or_cause Allows us to specify which column in the `correlations` table will be searched. Choices are effect or cause.
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
    # @option opts [Integer] :offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
    # @return [Variable]
    def v1_public_variables_search_search_get(search, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariablesApi#v1_public_variables_search_search_get ..."
      end
      
      # verify the required parameter 'search' is set
      fail "Missing the required parameter 'search' when calling v1_public_variables_search_search_get" if search.nil?
      
      # resource path
      path = "/v1/public/variables/search/{search}".sub('{format}','json').sub('{' + 'search' + '}', search.to_s)

      # query parameters
      query_params = {}
      query_params[:'effectOrCause'] = opts[:'effect_or_cause'] if opts[:'effect_or_cause']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'sort'] = opts[:'sort'] if opts[:'sort']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Variable')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariablesApi#v1_public_variables_search_search_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update User Settings for a Variable
    # Users can change things like the display name for a variable. They can also change the parameters used in analysis of that variable such as the expected duration of action for a variable to have an effect, the estimated delay before the onset of action. In order to filter out erroneous data, they are able to set the maximum and minimum reasonable daily values for a variable.
    # @param sharing_data Variable user settings data
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_user_variables_post(sharing_data, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariablesApi#v1_user_variables_post ..."
      end
      
      # verify the required parameter 'sharing_data' is set
      fail "Missing the required parameter 'sharing_data' when calling v1_user_variables_post" if sharing_data.nil?
      
      # resource path
      path = "/v1/userVariables".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sharing_data)
      

      auth_names = ['oauth2']
      @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if Configuration.debugging
        Configuration.logger.debug "API called: VariablesApi#v1_user_variables_post"
      end
      return nil
    end

    # Variable categories
    # The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
    # @param [Hash] opts the optional parameters
    # @return [Array<VariableCategory>]
    def v1_variable_categories_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariablesApi#v1_variable_categories_get ..."
      end
      
      # resource path
      path = "/v1/variableCategories".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<VariableCategory>')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariablesApi#v1_variable_categories_get. Result: #{result.inspect}"
      end
      return result
    end

    # Get variables by the category name
    # Get variables by the category name. &lt;br&gt;Supported filter parameters:&lt;br&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;name&lt;/b&gt; - Original name of the variable (supports exact name match only)&lt;/li&gt;&lt;li&gt;&lt;b&gt;lastUpdated&lt;/b&gt; - Filter by the last time any of the properties of the variable were changed. Uses UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;&lt;/li&gt;&lt;li&gt;&lt;b&gt;source&lt;/b&gt; - The name of the data source that created the variable (supports exact name match only). So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here&lt;/li&gt;&lt;li&gt;&lt;b&gt;latestMeasurementTime&lt;/b&gt; - Filter variables based on the last time a measurement for them was created or updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;&lt;/li&gt;&lt;li&gt;&lt;b&gt;numberOfMeasurements&lt;/b&gt; - Filter variables by the total number of measurements that they have. This could be used of you want to filter or sort by popularity.&lt;/li&gt;&lt;li&gt;&lt;b&gt;lastSource&lt;/b&gt; - Limit variables to those which measurements were last submitted by a specific source. So if you have a client application and you only want variables that were last updated by your app, you can include the name of your app here. (supports exact name match only)&lt;/li&gt;&lt;/ul&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id User id
    # @option opts [String] :category Filter data by category
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
    # @option opts [Integer] :offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
    # @return [Variable]
    def v1_variables_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariablesApi#v1_variables_get ..."
      end
      
      # resource path
      path = "/v1/variables".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'userId'] = opts[:'user_id'] if opts[:'user_id']
      query_params[:'category'] = opts[:'category'] if opts[:'category']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'sort'] = opts[:'sort'] if opts[:'sort']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['basicAuth', 'oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Variable')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariablesApi#v1_variables_get. Result: #{result.inspect}"
      end
      return result
    end

    # Create Variables
    # Allows the client to create a new variable in the `variables` table.
    # @param variable_name Original name for the variable.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_variables_post(variable_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariablesApi#v1_variables_post ..."
      end
      
      # verify the required parameter 'variable_name' is set
      fail "Missing the required parameter 'variable_name' when calling v1_variables_post" if variable_name.nil?
      
      # resource path
      path = "/v1/variables".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(variable_name)
      

      auth_names = ['oauth2']
      @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if Configuration.debugging
        Configuration.logger.debug "API called: VariablesApi#v1_variables_post"
      end
      return nil
    end

    # Get variables by search query
    # Get variables containing the search characters for which the currently logged in user has measurements. Used to provide auto-complete function in variable search boxes.
    # @param search Search query which may be an entire variable name or a fragment of one.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :category_name Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
    # @option opts [String] :source Specify a data source name to only return variables from a specific data source.
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
    # @option opts [Integer] :offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
    # @return [Array<Variable>]
    def v1_variables_search_search_get(search, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariablesApi#v1_variables_search_search_get ..."
      end
      
      # verify the required parameter 'search' is set
      fail "Missing the required parameter 'search' when calling v1_variables_search_search_get" if search.nil?
      
      # resource path
      path = "/v1/variables/search/{search}".sub('{format}','json').sub('{' + 'search' + '}', search.to_s)

      # query parameters
      query_params = {}
      query_params[:'categoryName'] = opts[:'category_name'] if opts[:'category_name']
      query_params[:'source'] = opts[:'source'] if opts[:'source']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Variable>')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariablesApi#v1_variables_search_search_get. Result: #{result.inspect}"
      end
      return result
    end

    # Get info about a variable
    # Get all of the settings and information about a variable by its name. If the logged in user has modified the settings for the variable, these will be provided instead of the default settings for that variable.
    # @param variable_name Variable name
    # @param [Hash] opts the optional parameters
    # @return [Variable]
    def v1_variables_variable_name_get(variable_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VariablesApi#v1_variables_variable_name_get ..."
      end
      
      # verify the required parameter 'variable_name' is set
      fail "Missing the required parameter 'variable_name' when calling v1_variables_variable_name_get" if variable_name.nil?
      
      # resource path
      path = "/v1/variables/{variableName}".sub('{format}','json').sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Variable')
      if Configuration.debugging
        Configuration.logger.debug "API called: VariablesApi#v1_variables_variable_name_get. Result: #{result.inspect}"
      end
      return result
    end
  end
end




