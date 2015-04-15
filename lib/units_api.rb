require "uri"

class UnitsApi
  basePath = "https://localhost/api"
  # apiInvoker = APIInvoker


  # Get unit categories
  # 
  # @return void
  def self.unitCategoriesGet (opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      
    }.merge(opts)

    #resource path
    path = "/unitCategories".sub('{format}','json')
    
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

  # Get all available units
  # Get all available units
  # @param unit_name Unit name
  # @param abbreviated_unit_name Unit abbreviation
  # @param category_name Unit category
  # @return void
  def self.unitsGet (unit_name, abbreviated_unit_name, category_name, opts={})
    query_param_keys = [:unit_name,:abbreviated_unit_name,:category_name]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'unit_name' => unit_name,
      :'abbreviated_unit_name' => abbreviated_unit_name,
      :'category_name' => category_name
      
    }.merge(opts)

    #resource path
    path = "/units".sub('{format}','json')
    
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

  # Get all available units for variable
  # Get all available units for variable
  # @param variable Variable name
  # @param unit_name Unit name
  # @param cabbreviated_unit_name Unit abbreviation
  # @param category_name Unit category
  # @return void
  def self.unitsVariableGet (variable, unit_name, cabbreviated_unit_name, category_name, opts={})
    query_param_keys = [:variable,:unit_name,:cabbreviated_unit_name,:category_name]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'variable' => variable,
      :'unit_name' => unit_name,
      :'cabbreviated_unit_name' => cabbreviated_unit_name,
      :'category_name' => category_name
      
    }.merge(opts)

    #resource path
    path = "/unitsVariable".sub('{format}','json')
    
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
