require "uri"

module SwaggerClient
  class OauthApi
    basePath = "https://localhost/api"
    # apiInvoker = APIInvoker

    # Access Token
    # Client provides authorization token obtained from /api/oauth2/authorize to this endpoint and receives an access token. Access token can then be used to query different API endpoints of QuantiModo.
    # @param client_id Client id
    # @param client_secret Client secret
    # @param grant_type Grant Type can be &#39;authorization_code&#39; or &#39;refresh_token&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [string] :response_type Response type
    # @option opts [string] :scope Scope
    # @option opts [string] :redirect_uri Redirect uri
    # @option opts [string] :state State
    # @option opts [string] :realm Realm
    # @return [nil]
    def self.oauth2_accesstoken_get(client_id, client_secret, grant_type, opts = {})
      
      # verify the required parameter 'client_id' is set
      raise "Missing the required parameter 'client_id' when calling oauth2_accesstoken_get" if client_id.nil?
      
      # verify the required parameter 'client_secret' is set
      raise "Missing the required parameter 'client_secret' when calling oauth2_accesstoken_get" if client_secret.nil?
      
      # verify the required parameter 'grant_type' is set
      raise "Missing the required parameter 'grant_type' when calling oauth2_accesstoken_get" if grant_type.nil?
      

      # resource path
      path = "/oauth2/accesstoken".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'client_id'] = client_id
      query_params[:'client_secret'] = client_secret
      query_params[:'grant_type'] = grant_type
      query_params[:'response_type'] = opts[:'response_type'] if opts[:'response_type']
      query_params[:'scope'] = opts[:'scope'] if opts[:'scope']
      query_params[:'redirect_uri'] = opts[:'redirect_uri'] if opts[:'redirect_uri']
      query_params[:'state'] = opts[:'state'] if opts[:'state']
      query_params[:'realm'] = opts[:'realm'] if opts[:'realm']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # Authorize
    # Ask the user if they want to allow a client applications to submit or obtain data from their QM account. It will redirect the user to the url provided by the client application with the code as a query parameter or error in case of an error.
    # @param client_id This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by emailing info@quantimo.do.
    # @param client_secret This is the secret for your obtained clietn_id. QuantiModo uses this to validate that only your application uses the client_id.
    # @param response_type If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment.
    # @param scope Scopes include basic, readmeasurements, and writemeasurements. The \&quot;basic\&quot; scope allows you to read user info (displayname, email, etc). The \&quot;readmeasurements\&quot; scope allows one to read a user&#39;s data. The \&quot;writemeasurements\&quot; scope allows you to write user data. Separate multiple scopes by a space.
    # @param [Hash] opts the optional parameters
    # @option opts [string] :redirect_uri The redirect URI is the URL within your client application that will receive the OAuth2 credentials.
    # @option opts [string] :state An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI
    # @option opts [string] :realm Name of the realm representing the users of your distributed applications and services. A \&quot;realm\&quot; attribute MAY be included to indicate the scope of protection.
    # @return [nil]
    def self.oauth2_authorize_get(client_id, client_secret, response_type, scope, opts = {})
      
      # verify the required parameter 'client_id' is set
      raise "Missing the required parameter 'client_id' when calling oauth2_authorize_get" if client_id.nil?
      
      # verify the required parameter 'client_secret' is set
      raise "Missing the required parameter 'client_secret' when calling oauth2_authorize_get" if client_secret.nil?
      
      # verify the required parameter 'response_type' is set
      raise "Missing the required parameter 'response_type' when calling oauth2_authorize_get" if response_type.nil?
      
      # verify the required parameter 'scope' is set
      raise "Missing the required parameter 'scope' when calling oauth2_authorize_get" if scope.nil?
      

      # resource path
      path = "/oauth2/authorize".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'client_id'] = client_id
      query_params[:'client_secret'] = client_secret
      query_params[:'response_type'] = response_type
      query_params[:'scope'] = scope
      query_params[:'redirect_uri'] = opts[:'redirect_uri'] if opts[:'redirect_uri']
      query_params[:'state'] = opts[:'state'] if opts[:'state']
      query_params[:'realm'] = opts[:'realm'] if opts[:'realm']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end
  end
end
