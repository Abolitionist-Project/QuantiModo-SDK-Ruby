require "uri"

class AdministrationApi
  basePath = "https://localhost/api"
  # apiInvoker = APIInvoker


  # getCacheClear
  # Clears the memcached cache for the units and some other things.
  # @return void
  def self.administrationCacheClearGet (opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      
    }.merge(opts)

    #resource path
    path = "/administration/cache/clear".sub('{format}','json')
    
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

  # getCorrelationsUpdate
  # Recalculate correlations for a variable
  # @param modified_variable Original name of variable for which correlations are to be calculated (varchar)
  # @param user_id ID for user for whom the correlations should be recalculated.
  # @return void
  def self.administrationCorrelationsUpdateGet (modified_variable, user_id, opts={})
    query_param_keys = [:modified_variable,:user_id]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'modified_variable' => modified_variable,
      :'user_id' => user_id
      
    }.merge(opts)

    #resource path
    path = "/administration/correlations/update".sub('{format}','json')
    
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

  # getCorrelationsUpdateAllUsers
  # Recalculates correlations for all variables, for all users.
  # @return void
  def self.administrationCorrelationsUpdateAllUsersGet (opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      
    }.merge(opts)

    #resource path
    path = "/administration/correlations/updateAllUsers".sub('{format}','json')
    
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

  # getCorrelationsUpdateAllVariables
  # Updates the correlations for all variables for a given user.
  # @param user_id ID for user for whom the correlations should be recalculated. If empty, uses currently logged in user.
  # @return void
  def self.administrationCorrelationsUpdateAllVariablesGet (user_id, opts={})
    query_param_keys = [:user_id]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'user_id' => user_id
      
    }.merge(opts)

    #resource path
    path = "/administration/correlations/updateAllVariables".sub('{format}','json')
    
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
