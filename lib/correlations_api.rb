require "uri"

class CorrelationsApi
  basePath = "https://localhost/api"
  # apiInvoker = APIInvoker


  # Get correlations
  # Get correlations
  # @param effect ORIGINAL variable name of the effect variable for which the user desires correlations
  # @param cause ORIGINAL variable name of the cause variable for which the user desires correlations
  # @return array[Correlation]
  def self.correlationsGet (effect, cause, opts={})
    query_param_keys = [:effect,:cause]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'effect' => effect,
      :'cause' => cause
      
    }.merge(opts)

    #resource path
    path = "/correlations".sub('{format}','json')
    
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
    
    
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body, :form_params => form_parameter_hash }).make.body
    
    response.map {|response| Correlation.new(response) }
    
    
  
  end

  # Get average correlations for variables containing search term
  # Returns the average correlations from all users for all public variables that contain the characters in the search query.
  # @param search Search query
  # @param effect_or_cause Specifies whehter to return the effects or causes of the searched variable.
  # @return array[Correlation]
  def self.publicCorrelationsSearchSearchGet (search, effect_or_cause, opts={})
    query_param_keys = [:effect_or_cause]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'search' => search,
      :'effect_or_cause' => effect_or_cause
      
    }.merge(opts)

    #resource path
    path = "/public/correlations/search/{search}".sub('{format}','json').sub('{' + 'search' + '}', search.to_s)
    
    
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
    
    
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body, :form_params => form_parameter_hash }).make.body
    
    response.map {|response| Correlation.new(response) }
    
    
  
  end
end
