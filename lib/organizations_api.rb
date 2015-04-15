require "uri"

class OrganizationsApi
  basePath = "https://localhost/api"
  # apiInvoker = APIInvoker


  # Get user tokens for existing users, create new users
  # Get user tokens for existing users, create new users
  # @param organization_id Organization ID
  # @param body Provides organization token and user ID
  # @return UserTokenSuccessfulResponse
  def self.v1OrganizationsOrganizationIdUsersPost (organization_id, body, opts={})
    query_param_keys = []
    headerParams = {}

    
    
    # set default values and merge with input
    options = {
      :'organization_id' => organization_id,
      :'body' => body
      
    }.merge(opts)

    #resource path
    path = "/v1/organizations/{organizationId}/users".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s)
    
    
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
    
    
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body, :form_params => form_parameter_hash }).make.body
     UserTokenSuccessfulResponse.new(response)
    
    
  
  end
end
