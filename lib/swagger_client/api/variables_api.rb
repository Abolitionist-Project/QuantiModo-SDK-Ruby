require "uri"

module SwaggerClient
  class VariablesApi
    basePath = "https://localhost/api"
    # apiInvoker = APIInvoker

    # Store or Update a Correlation
    # Store or Update a Correlation
    # @param cause 
    # @param effect 
    # @param correlationcoefficient 
    # @param vote 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.correlations_post(cause, effect, correlationcoefficient, vote, opts = {})
      
      # verify the required parameter 'cause' is set
      raise "Missing the required parameter 'cause' when calling correlations_post" if cause.nil?
      
      # verify the required parameter 'effect' is set
      raise "Missing the required parameter 'effect' when calling correlations_post" if effect.nil?
      
      # verify the required parameter 'correlationcoefficient' is set
      raise "Missing the required parameter 'correlationcoefficient' when calling correlations_post" if correlationcoefficient.nil?
      
      # verify the required parameter 'vote' is set
      raise "Missing the required parameter 'vote' when calling correlations_post" if vote.nil?
      

      # resource path
      path = "/correlations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cause'] = cause
      query_params[:'effect'] = effect
      query_params[:'correlationcoefficient'] = correlationcoefficient
      query_params[:'vote'] = vote

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
      Swagger::Request.new(:POST, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # Get public variables
    # This endpoint retrieves an array of all public variables. Public variables are things like foods, medications, symptoms, conditions, and anything not unique to a particular user. For instance, a telephone number or name would not be a public variable.
    # @param [Hash] opts the optional parameters
    # @return [Variable]
    def self.public_variables_get(opts = {})
      

      # resource path
      path = "/public/variables".sub('{format}','json')

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
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = Variable.new() and obj.build_from_hash(response)
    end

    # Get top 5 PUBLIC variables with the most correlations
    # Get top 5 PUBLIC variables with the most correlations containing the entered search characters. For example, search for &#39;mood&#39; as an effect. Since &#39;Overall Mood&#39; has a lot of correlations with other variables, it should be in the autocomplete list.
    # @param search Search query can be some fraction of a variable name.
    # @param [Hash] opts the optional parameters
    # @option opts [string] :effect_or_cause Allows us to specify which column in the `correlations` table will be searched. Choices are effect or cause.
    # @return [Variable]
    def self.public_variables_search_search_get(search, opts = {})
      
      # verify the required parameter 'search' is set
      raise "Missing the required parameter 'search' when calling public_variables_search_search_get" if search.nil?
      

      # resource path
      path = "/public/variables/search/{search}".sub('{format}','json').sub('{' + 'search' + '}', search.to_s)

      # query parameters
      query_params = {}
      query_params[:'effectOrCause'] = opts[:'effect_or_cause'] if opts[:'effect_or_cause']

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
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = Variable.new() and obj.build_from_hash(response)
    end

    # Get variable categories
    # The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
    # @param [Hash] opts the optional parameters
    # @return [array[VariableCategory]]
    def self.variable_categories_get(opts = {})
      

      # resource path
      path = "/variableCategories".sub('{format}','json')

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
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      response.map {|response| obj = VariableCategory.new() and obj.build_from_hash(response) }
    end

    # Update User Settings for a Variable
    # Users can change things like the display name for a variable. They can also change the parameters used in analysis of that variable such as the expected duration of action for a variable to have an effect, the estimated delay before the onset of action. In order to filter out erroneous data, they are able to set the maximum and minimum reasonable daily values for a variable.
    # @param sharing_data Variable user settings data
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.variable_user_settings_post(sharing_data, opts = {})
      
      # verify the required parameter 'sharing_data' is set
      raise "Missing the required parameter 'sharing_data' when calling variable_user_settings_post" if sharing_data.nil?
      

      # resource path
      path = "/variableUserSettings".sub('{format}','json')

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
      post_body = Swagger::Request.object_to_http_body(sharing_data)
      

      auth_names = ['oauth2']
      Swagger::Request.new(:POST, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # Get variables by the category name
    # Get variables by the category name
    # @param [Hash] opts the optional parameters
    # @option opts [int] :user_id User id
    # @option opts [string] :category_name Category name
    # @return [Variable]
    def self.variables_get(opts = {})
      

      # resource path
      path = "/variables".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'userId'] = opts[:'user_id'] if opts[:'user_id']
      query_params[:'categoryName'] = opts[:'category_name'] if opts[:'category_name']

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
      

      auth_names = ['basicAuth', 'oauth2']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = Variable.new() and obj.build_from_hash(response)
    end

    # Set variable
    # Allows the client to create a new variable in the `variables` table.
    # @param variable_name Original name for the variable.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.variables_post(variable_name, opts = {})
      
      # verify the required parameter 'variable_name' is set
      raise "Missing the required parameter 'variable_name' when calling variables_post" if variable_name.nil?
      

      # resource path
      path = "/variables".sub('{format}','json')

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
      post_body = Swagger::Request.object_to_http_body(variable_name)
      

      auth_names = ['oauth2']
      Swagger::Request.new(:POST, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # Get variables by search query
    # Get variables containing the search characters for which the currently logged in user has measurements. Used to provide auto-complete function in variable search boxes.
    # @param search Search query which may be an entire variable name or a fragment of one.
    # @param [Hash] opts the optional parameters
    # @option opts [string] :category_name Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
    # @option opts [string] :source Specify a data source name to only return variables from a specific data source.
    # @option opts [int] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
    # @option opts [int] :offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
    # @return [array[Variable]]
    def self.variables_search_search_get(search, opts = {})
      
      # verify the required parameter 'search' is set
      raise "Missing the required parameter 'search' when calling variables_search_search_get" if search.nil?
      

      # resource path
      path = "/variables/search/{search}".sub('{format}','json').sub('{' + 'search' + '}', search.to_s)

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
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      response.map {|response| obj = Variable.new() and obj.build_from_hash(response) }
    end

    # Get info about a variable
    # Get all of the settings and information about a variable by its name. If the logged in user has modified the settings for the variable, these will be provided instead of the default settings for that variable.
    # @param variable_name Variable name
    # @param [Hash] opts the optional parameters
    # @return [Variable]
    def self.variables_variable_name_get(variable_name, opts = {})
      
      # verify the required parameter 'variable_name' is set
      raise "Missing the required parameter 'variable_name' when calling variables_variable_name_get" if variable_name.nil?
      

      # resource path
      path = "/variables/{variableName}".sub('{format}','json').sub('{' + 'variableName' + '}', variable_name.to_s)

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
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = Variable.new() and obj.build_from_hash(response)
    end
  end
end
