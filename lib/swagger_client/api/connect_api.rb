require "uri"

module SwaggerClient
  class ConnectApi

    # Get embeddable connect javascript
    # Get embeddable connect javascript
    # @param [Hash] opts the optional parameters
    # @option opts [String] :t User token
    # @return [nil]
    def self.v1_connect/js_get(opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: ConnectApi#v1_connect/js_get ..."
      end
      
      # resource path
      path = "/v1/connect.js".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'t'] = opts[:'t'] if opts[:'t']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/x-javascript']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: ConnectApi#v1_connect/js_get"
      end
      nil
    end

    # Mobile connect page
    # Mobile connect page
    # @param t User token
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.v1_connect_mobile_get(t, opts = {})
      if Swagger.configuration.debug
        Swagger.logger.debug "Calling API: ConnectApi#v1_connect_mobile_get ..."
      end
      
      # verify the required parameter 't' is set
      fail "Missing the required parameter 't' when calling v1_connect_mobile_get" if t.nil?
      
      # resource path
      path = "/v1/connect/mobile".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'t'] = t

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['text/html']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      if Swagger.configuration.debug
        Swagger.logger.debug "API called: ConnectApi#v1_connect_mobile_get"
      end
      nil
    end
  end
end
