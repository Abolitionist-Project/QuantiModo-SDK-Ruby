require "uri"

class VariablesApi
  basePath = "https://localhost/api"
  # apiInvoker = APIInvoker


  # Get public variables
  # Get public variables
  # @return void
  def self.publicVariablesGet (opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      
    }.merge(opts)

    #resource path
    path = "/public/variables".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameters
    headers = {}

    _header_accept = 'application/json'
    if _header_accept != ''
      headerParams['Accept'] = _header_accept
    end 
    _header_content_type = []
    headerParams['Content-Type'] = _header_content_type.length > 0 ? _header_content_type[0] : 'application/json'

    
    
    # http body (model)
    post_body = nil
    
    # form parameters
    form_parameter_hash = {}
    
    
    
    Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body, :form_params => form_parameter_hash }).make
    
  
  end

  # Get top 5 PUBLIC variables with the most correlations
  # Get top 5 PUBLIC variables with the most correlations containing the entered search characters. For example, search for &#39;mood&#39; as an effect. Since &#39;Overall Mood&#39; has a lot of correlations with other variables, it should be in the autocomplete list.
  # @param search Search query
  # @param effect_or_cause Allows us to specify which column in the `correlations` table will be searched. Choices are effect or cause.
  # @return void
  def self.publicVariablesSearchSearchGet (search, effect_or_cause, opts={})
    query_param_keys = [:effect_or_cause]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'search' => search,
      :'effect_or_cause' => effect_or_cause
      
    }.merge(opts)

    #resource path
    path = "/public/variables/search/{search}".sub('{format}','json').sub('{' + 'search' + '}', search.to_s)
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameters
    headers = {}

    _header_accept = 'application/json'
    if _header_accept != ''
      headerParams['Accept'] = _header_accept
    end 
    _header_content_type = []
    headerParams['Content-Type'] = _header_content_type.length > 0 ? _header_content_type[0] : 'application/json'

    
    
    # http body (model)
    post_body = nil
    
    # form parameters
    form_parameter_hash = {}
    
    
    
    Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body, :form_params => form_parameter_hash }).make
    
  
  end

  # Get variable categories
  # The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work.
  # @return void
  def self.variableCategoriesGet (opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      
    }.merge(opts)

    #resource path
    path = "/variableCategories".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameters
    headers = {}

    _header_accept = 'application/json'
    if _header_accept != ''
      headerParams['Accept'] = _header_accept
    end 
    _header_content_type = []
    headerParams['Content-Type'] = _header_content_type.length > 0 ? _header_content_type[0] : 'application/json'

    
    
    # http body (model)
    post_body = nil
    
    # form parameters
    form_parameter_hash = {}
    
    
    
    Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body, :form_params => form_parameter_hash }).make
    
  
  end

  # Change variable user setting
  # Change variable user setting
  # @param sharing_data Variable user settings data
  # @return void
  def self.variableUserSettingsPost (sharing_data, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'sharing_data' => sharing_data
      
    }.merge(opts)

    #resource path
    path = "/variableUserSettings".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameters
    headers = {}

    _header_accept = 'application/json'
    if _header_accept != ''
      headerParams['Accept'] = _header_accept
    end 
    _header_content_type = []
    headerParams['Content-Type'] = _header_content_type.length > 0 ? _header_content_type[0] : 'application/json'

    
    
    # http body (model)
    post_body = nil
    
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array
      else 
        if body.respond_to?("to_body".to_sym)
          post_body = body.to_body
        else
          post_body = body
        end
      end
    end
    
    # form parameters
    form_parameter_hash = {}
    
    
    
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body, :form_params => form_parameter_hash }).make
    
  
  end

  # Get variables by the category name
  # Get variables by the category name
  # @param user_id User id
  # @param category_name Category name
  # @return void
  def self.variablesGet (user_id, category_name, opts={})
    query_param_keys = [:user_id,:category_name]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'user_id' => user_id,
      :'category_name' => category_name
      
    }.merge(opts)

    #resource path
    path = "/variables".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameters
    headers = {}

    _header_accept = 'application/json'
    if _header_accept != ''
      headerParams['Accept'] = _header_accept
    end 
    _header_content_type = []
    headerParams['Content-Type'] = _header_content_type.length > 0 ? _header_content_type[0] : 'application/json'

    
    
    # http body (model)
    post_body = nil
    
    # form parameters
    form_parameter_hash = {}
    
    
    
    Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body, :form_params => form_parameter_hash }).make
    
  
  end

  # Set variable
  # Allows the client to create a new variable in the `variables` table.
  # @param variable_name Original name for the variable.
  # @return void
  def self.variablesPost (variable_name, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'variable_name' => variable_name
      
    }.merge(opts)

    #resource path
    path = "/variables".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameters
    headers = {}

    _header_accept = 'application/json'
    if _header_accept != ''
      headerParams['Accept'] = _header_accept
    end 
    _header_content_type = []
    headerParams['Content-Type'] = _header_content_type.length > 0 ? _header_content_type[0] : 'application/json'

    
    
    # http body (model)
    post_body = nil
    
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array
      else 
        if body.respond_to?("to_body".to_sym)
          post_body = body.to_body
        else
          post_body = body
        end
      end
    end
    
    # form parameters
    form_parameter_hash = {}
    
    
    
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body, :form_params => form_parameter_hash }).make
    
  
  end

  # Get variables by search query
  # Get variables containing the search characters. Used to provide auto-complete function in variable search boxes.
  # @param search Search query
  # @param category_name Filter variables by category name.
  # @param source Filter variables by source name.
  # @param limit Search limit
  # @param offset Search offset
  # @return void
  def self.variablesSearchSearchGet (search, category_name, source, limit, offset, opts={})
    query_param_keys = [:category_name,:source,:limit,:offset]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'search' => search,
      :'category_name' => category_name,
      :'source' => source,
      :'limit' => limit,
      :'offset' => offset
      
    }.merge(opts)

    #resource path
    path = "/variables/search/{search}".sub('{format}','json').sub('{' + 'search' + '}', search.to_s)
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameters
    headers = {}

    _header_accept = 'application/json'
    if _header_accept != ''
      headerParams['Accept'] = _header_accept
    end 
    _header_content_type = []
    headerParams['Content-Type'] = _header_content_type.length > 0 ? _header_content_type[0] : 'application/json'

    
    
    # http body (model)
    post_body = nil
    
    # form parameters
    form_parameter_hash = {}
    
    
    
    Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body, :form_params => form_parameter_hash }).make
    
  
  end

  # Get info about a variable
  # Get all of the settings and information about a variable by name
  # @param variable_name Variable name
  # @param category_name categoryName` parameter allows us to filter the variables so that only ones from the specified category are returned.
  # @return void
  def self.variablesVariableNameGet (variable_name, category_name, opts={})
    query_param_keys = [:category_name]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'variable_name' => variable_name,
      :'category_name' => category_name
      
    }.merge(opts)

    #resource path
    path = "/variables/{variableName}".sub('{format}','json').sub('{' + 'variableName' + '}', variable_name.to_s)
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    # header parameters
    headers = {}

    _header_accept = 'application/json'
    if _header_accept != ''
      headerParams['Accept'] = _header_accept
    end 
    _header_content_type = []
    headerParams['Content-Type'] = _header_content_type.length > 0 ? _header_content_type[0] : 'application/json'

    
    
    # http body (model)
    post_body = nil
    
    # form parameters
    form_parameter_hash = {}
    
    
    
    Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body, :form_params => form_parameter_hash }).make
    
  
  end
end
