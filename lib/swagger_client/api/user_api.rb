require "uri"

module SwaggerClient
  class UserApi

    # Get all available units for variableGet authenticated user
    # Returns user info for the currently authenticated user.
    # @param [Hash] opts the optional parameters
    # @return [User]
    def self.user_me_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: UserApi#user_me_get ..."
      end
      
      # resource path
      path = "/user/me".sub('{format}','json')

      # query parameters
      query_params = {}

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
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('User')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: UserApi#user_me_get. Result: #{result.inspect}"
      end
      result
    end

    # Get user tokens for existing users, create new users
    # Get user tokens for existing users, create new users
    # @param organization_id Organization ID
    # @param body Provides organization token and user ID
    # @param [Hash] opts the optional parameters
    # @return [UserTokenSuccessfulResponse]
    def self.v1_organizations_organization_id_users_post(organization_id, body, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: UserApi#v1_organizations_organization_id_users_post ..."
      end
      
      # verify the required parameter 'organization_id' is set
      fail "Missing the required parameter 'organization_id' when calling v1_organizations_organization_id_users_post" if organization_id.nil?
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling v1_organizations_organization_id_users_post" if body.nil?
      
      # resource path
      path = "/v1/organizations/{organizationId}/users".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s)

      # query parameters
      query_params = {}

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
      post_body = Swagger::Request.object_to_http_body(body)
      

      auth_names = []
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      result = response.deserialize('UserTokenSuccessfulResponse')
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: UserApi#v1_organizations_organization_id_users_post. Result: #{result.inspect}"
      end
      result
    end
  end
end
