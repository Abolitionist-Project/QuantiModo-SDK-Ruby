require "uri"

class ConnectorsApi
  basePath = "https://localhost/api"
  # apiInvoker = APIInvoker


  # List of Connectors
  # Returns a list of all available connectors. A connector pulls data from other data providers using their API or a screenscraper.
  # @return array[Connector]
  def self.connectorsListGet (opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      
    }.merge(opts)

    #resource path
    path = "/connectors/list".sub('{format}','json')
    
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
    
    response.map {|response| Connector.new(response) }
    
    
  
  end

  # Obtain a token from 3rd party data source
  # The `connect` method tells it to attempt to obtain a token from the data provider, store it in `connect`.`credentials`, allowing the connector to obtain user data.
  # @param connector Lowercase system name of the source application or device
  # @return void
  def self.connectorsConnectorConnectGet (connector, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'connector' => connector
      
    }.merge(opts)

    #resource path
    path = "/connectors/{connector}/connect".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)
    
    
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

  # Get connection parameters
  # The `connectInstructions` method returns instructions that describe what parameters and endpoint to use to connect to the given data provider.
  # @param connector Lowercase system name of the source application or device
  # @return void
  def self.connectorsConnectorConnectInstructionsGet (connector, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'connector' => connector
      
    }.merge(opts)

    #resource path
    path = "/connectors/{connector}/connectInstructions".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)
    
    
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

  # Delete stored connection info
  # The `disconnect` method deletes any stored tokens or connection information from the `connectors` database.
  # @param connector Lowercase system name of the source application or device
  # @return void
  def self.connectorsConnectorDisconnectGet (connector, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'connector' => connector
      
    }.merge(opts)

    #resource path
    path = "/connectors/{connector}/disconnect".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)
    
    
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

  # Get connector info for user
  # The `info` method returns information about the connector such as the connector id, whether or not is connected (i.e. we have a token in the `connector`.`credentials` table, and the update history from the `connector`.`updates` table.)
  # @param connector Lowercase system name of the source application or device
  # @return void
  def self.connectorsConnectorInfoGet (connector, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'connector' => connector
      
    }.merge(opts)

    #resource path
    path = "/connectors/{connector}/info".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)
    
    
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

  # Sync with data source
  # The `update` method tells the QM Connector Framework to check with the data provider (such as Fitbit or MyFitnessPal) and put any new data in the `quantimodo`.`measurements` table.
  # @param connector Lowercase system name of the source application or device
  # @return void
  def self.connectorsConnectorUpdateGet (connector, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'connector' => connector
      
    }.merge(opts)

    #resource path
    path = "/connectors/{connector}/update".sub('{format}','json').sub('{' + 'connector' + '}', connector.to_s)
    
    
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
