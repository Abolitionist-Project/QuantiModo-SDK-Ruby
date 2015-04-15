require "uri"

class SharingApi
  basePath = "https://localhost/api"
  # apiInvoker = APIInvoker


  # Share variable
  # Share variable
  # @param sharing_data Sharing data
  # @return void
  def self.sharingPost (sharing_data, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'sharing_data' => sharing_data
      
    }.merge(opts)

    #resource path
    path = "/sharing".sub('{format}','json')
    
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

  # Removes access permissions for a given variable for a given user.
  # Delete variable sharing
  # @param sharing_data Sharing data
  # @return void
  def self.sharingDelete (sharing_data, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'sharing_data' => sharing_data
      
    }.merge(opts)

    #resource path
    path = "/sharing".sub('{format}','json')
    
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
    
    
    
    Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body, :form_params => form_parameter_hash }).make
    
  
  end

  # Get variable sharing details
  # 
  # @param variable_name Variable name
  # @return void
  def self.sharingVariableNameGet (variable_name, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'variable_name' => variable_name
      
    }.merge(opts)

    #resource path
    path = "/sharing/{variableName}".sub('{format}','json').sub('{' + 'variableName' + '}', variable_name.to_s)
    
    
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
