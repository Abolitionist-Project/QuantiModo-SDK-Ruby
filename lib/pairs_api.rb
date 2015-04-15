require "uri"

class PairsApi
  basePath = "https://localhost/api"
  # apiInvoker = APIInvoker


  # Get pairs
  # Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
  # @param cause Original variable name for the explanatory or independent variable
  # @param effect Original variable name for the outcome or dependent variable
  # @param duration Duration of action (in seconds) from the cause variable settings.
  # @param delay Delay before onset of action (in seconds) from the cause variable settings.
  # @param start_time The earliest date (in epoch time) for which we should return measurements
  # @param end_time The most recent date (in epoch time) for which we should return measurements
  # @param cause_source Name of data source that the cause measurements should come from
  # @param effect_source Name of data source that the effectmeasurements should come from
  # @param cause_unit Abbreviated name for the unit cause measurements to be returned in
  # @param effect_unit Abbreviated name for the unit effect measurements to be returned in
  # @return void
  def self.pairsGet (cause, effect, duration, delay, start_time, end_time, cause_source, effect_source, cause_unit, effect_unit, opts={})
    query_param_keys = [:cause,:effect,:duration,:delay,:start_time,:end_time,:cause_source,:effect_source,:cause_unit,:effect_unit]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'cause' => cause,
      :'effect' => effect,
      :'duration' => duration,
      :'delay' => delay,
      :'start_time' => start_time,
      :'end_time' => end_time,
      :'cause_source' => cause_source,
      :'effect_source' => effect_source,
      :'cause_unit' => cause_unit,
      :'effect_unit' => effect_unit
      
    }.merge(opts)

    #resource path
    path = "/pairs".sub('{format}','json')
    
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
