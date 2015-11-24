require "uri"

module SwaggerClient
  class OauthApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Authorize
    # Ask the user if they want to allow a client&#39;s application to submit or obtain data from their QM account. It will redirect the user to the url provided by the client application with the code as a query parameter or error in case of an error.
    # @param client_id This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by emailing info@quantimo.do.
    # @param client_secret This is the secret for your obtained client_id. QuantiModo uses this to validate that only your application uses the client_id.
    # @param response_type If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment.
    # @param scope Scopes include basic, readmeasurements, and writemeasurements. The \&quot;basic\&quot; scope allows you to read user info (displayname, email, etc). The \&quot;readmeasurements\&quot; scope allows one to read a user&#39;s data. The \&quot;writemeasurements\&quot; scope allows you to write user data. Separate multiple scopes by a space.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :redirect_uri The redirect URI is the URL within your client application that will receive the OAuth2 credentials.
    # @option opts [String] :state An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI
    # @return [nil]
    def v1_oauth2_authorize_get(client_id, client_secret, response_type, scope, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: OauthApi#v1_oauth2_authorize_get ..."
      end
      
      # verify the required parameter 'client_id' is set
      fail "Missing the required parameter 'client_id' when calling v1_oauth2_authorize_get" if client_id.nil?
      
      # verify the required parameter 'client_secret' is set
      fail "Missing the required parameter 'client_secret' when calling v1_oauth2_authorize_get" if client_secret.nil?
      
      # verify the required parameter 'response_type' is set
      fail "Missing the required parameter 'response_type' when calling v1_oauth2_authorize_get" if response_type.nil?
      
      # verify the required parameter 'scope' is set
      fail "Missing the required parameter 'scope' when calling v1_oauth2_authorize_get" if scope.nil?
      
      # resource path
      path = "/v1/oauth2/authorize".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'client_id'] = client_id
      query_params[:'client_secret'] = client_secret
      query_params[:'response_type'] = response_type
      query_params[:'scope'] = scope
      query_params[:'redirect_uri'] = opts[:'redirect_uri'] if opts[:'redirect_uri']
      query_params[:'state'] = opts[:'state'] if opts[:'state']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if Configuration.debugging
        Configuration.logger.debug "API called: OauthApi#v1_oauth2_authorize_get"
      end
      return nil
    end

    # Access Token
    # Client provides authorization token obtained from /api/v1/oauth2/authorize to this endpoint and receives an access token. Access token can then be used to query different API endpoints of QuantiModo.
    # @param client_id This is the unique ID that QuantiModo uses to identify your application. Obtain a client id by emailing info@quantimo.do.
    # @param client_secret This is the secret for your obtained client_id. QuantiModo uses this to validate that only your application uses the client_id.
    # @param grant_type Grant Type can be &#39;authorization_code&#39; or &#39;refresh_token&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :response_type If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment.
    # @option opts [String] :scope Scopes include basic, readmeasurements, and writemeasurements. The \&quot;basic\&quot; scope allows you to read user info (displayname, email, etc). The \&quot;readmeasurements\&quot; scope allows one to read a user&#39;s data. The \&quot;writemeasurements\&quot; scope allows you to write user data. Separate multiple scopes by a space.
    # @option opts [String] :redirect_uri The redirect URI is the URL within your client application that will receive the OAuth2 credentials.
    # @option opts [String] :state An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI
    # @return [nil]
    def v1_oauth2_token_get(client_id, client_secret, grant_type, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: OauthApi#v1_oauth2_token_get ..."
      end
      
      # verify the required parameter 'client_id' is set
      fail "Missing the required parameter 'client_id' when calling v1_oauth2_token_get" if client_id.nil?
      
      # verify the required parameter 'client_secret' is set
      fail "Missing the required parameter 'client_secret' when calling v1_oauth2_token_get" if client_secret.nil?
      
      # verify the required parameter 'grant_type' is set
      fail "Missing the required parameter 'grant_type' when calling v1_oauth2_token_get" if grant_type.nil?
      
      # resource path
      path = "/v1/oauth2/token".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'client_id'] = client_id
      query_params[:'client_secret'] = client_secret
      query_params[:'grant_type'] = grant_type
      query_params[:'response_type'] = opts[:'response_type'] if opts[:'response_type']
      query_params[:'scope'] = opts[:'scope'] if opts[:'scope']
      query_params[:'redirect_uri'] = opts[:'redirect_uri'] if opts[:'redirect_uri']
      query_params[:'state'] = opts[:'state'] if opts[:'state']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['oauth2']
      @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if Configuration.debugging
        Configuration.logger.debug "API called: OauthApi#v1_oauth2_token_get"
      end
      return nil
    end
  end
end




