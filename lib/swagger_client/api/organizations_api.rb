require "uri"

module SwaggerClient
  class OrganizationsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get user tokens for existing users, create new users
    # Get user tokens for existing users, create new users
    # @param organization_id Organization ID
    # @param body Provides organization token and user ID
    # @param [Hash] opts the optional parameters
    # @return [UserTokenSuccessfulResponse]
    def v1_organizations_organization_id_users_post(organization_id, body, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: OrganizationsApi#v1_organizations_organization_id_users_post ..."
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
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      

      auth_names = []
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserTokenSuccessfulResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: OrganizationsApi#v1_organizations_organization_id_users_post. Result: #{result.inspect}"
      end
      return result
    end
  end
end




