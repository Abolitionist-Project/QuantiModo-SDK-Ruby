require "uri"

class OauthApi
  basePath = "https://localhost/api"
  # apiInvoker = APIInvoker


  # Authorize
  # Ask the user if they want to allow a client applications to submit or obtain data from their QM  account.
  # @param response_type Response type
  # @param redirect_uri Redirect uri
  # @param realm Realm
  # @param client_id Client id
  # @param scope Scope
  # @param state State
  # @return void
  def self.oauth2AuthorizeGet (response_type, redirect_uri, realm, client_id, scope, state, opts={})
    query_param_keys = [:response_type,:redirect_uri,:realm,:client_id,:scope,:state]
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'response_type' => response_type,
      :'redirect_uri' => redirect_uri,
      :'realm' => realm,
      :'client_id' => client_id,
      :'scope' => scope,
      :'state' => state
      
    }.merge(opts)

    #resource path
    path = "/oauth2/authorize".sub('{format}','json')
    
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
