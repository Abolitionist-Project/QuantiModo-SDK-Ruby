require "uri"

class MeasurementsApi
  basePath = "https://localhost/api"
  # apiInvoker = APIInvoker


  # Get measurement sources
  # 
  # @return void
  def self.measurementSourcesGet (opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      
    }.merge(opts)

    #resource path
    path = "/measurementSources".sub('{format}','json')
    
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

  # Set measurement source
  # Set measurement source
  # @param measurements An array of measurements you want to insert
  # @return void
  def self.measurementSourcesPost (measurements, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'measurements' => measurements
      
    }.merge(opts)

    #resource path
    path = "/measurementSources".sub('{format}','json')
    
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

  # Get measurements for this user
  # Get measurements for this user
  # @param variable_name Name of the variable you want measurements for
  # @param unit The unit your want the measurements in
  # @param start_time The lower limit of measurements returned (Epoch)
  # @param end_time The upper limit of measurements returned (Epoch)
  # @param grouping_width The time (in seconds) over which measurements are grouped together
  # @param grouping_timezone The time (in seconds) over which measurements are grouped together
  # @return void
  def self.measurementsGet (variable_name, unit, start_time, end_time, grouping_width, grouping_timezone, opts={})
    query_param_keys = [:variable_name,:unit,:start_time,:end_time,:grouping_width,:grouping_timezone]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'variable_name' => variable_name,
      :'unit' => unit,
      :'start_time' => start_time,
      :'end_time' => end_time,
      :'grouping_width' => grouping_width,
      :'grouping_timezone' => grouping_timezone
      
    }.merge(opts)

    #resource path
    path = "/measurements".sub('{format}','json')
    
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

  # Set measurement
  # Set measurement
  # @param measurements An array of measurements you want to insert
  # @return void
  def self.measurementsV2Post (measurements, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'measurements' => measurements
      
    }.merge(opts)

    #resource path
    path = "/measurements/v2".sub('{format}','json')
    
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

  # Get measurements range for this user
  # Get timestamp of the user&#39;s first and last measurements taken.
  # @param sources Enter source name to limit to specific source (varchar)
  # @param user If not specified, uses currently logged in user (bigint)
  # @return void
  def self.measurementsRangeGet (sources, user, opts={})
    query_param_keys = [:sources,:user]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'sources' => sources,
      :'user' => user
      
    }.merge(opts)

    #resource path
    path = "/measurementsRange".sub('{format}','json')
    
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
