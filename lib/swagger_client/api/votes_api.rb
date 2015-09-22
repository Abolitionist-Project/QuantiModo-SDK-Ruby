require "uri"

module SwaggerClient
  class VotesApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Post or update vote
    # This is to enable users to indicate their opinion on the plausibility of a causal relationship between a treatment and outcome. QuantiModo incorporates crowd-sourced plausibility estimations into their algorithm. This is done allowing user to indicate their view of the plausibility of each relationship with thumbs up/down buttons placed next to each prediction.
    # @param cause Cause variable name
    # @param effect Effect variable name
    # @param correlation Correlation value
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :vote Vote: 0 (for implausible) or 1 (for plausible)
    # @return [CommonResponse]
    def v1_votes_post(cause, effect, correlation, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VotesApi#v1_votes_post ..."
      end
      
      # verify the required parameter 'cause' is set
      fail "Missing the required parameter 'cause' when calling v1_votes_post" if cause.nil?
      
      # verify the required parameter 'effect' is set
      fail "Missing the required parameter 'effect' when calling v1_votes_post" if effect.nil?
      
      # verify the required parameter 'correlation' is set
      fail "Missing the required parameter 'correlation' when calling v1_votes_post" if correlation.nil?
      
      # resource path
      path = "/v1/votes".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cause'] = cause
      query_params[:'effect'] = effect
      query_params[:'correlation'] = correlation
      query_params[:'vote'] = opts[:'vote'] if opts[:'vote']

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
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommonResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: VotesApi#v1_votes_post. Result: #{result.inspect}"
      end
      return result
    end

    # Delete vote
    # Delete previously posted vote
    # @param cause Cause variable name
    # @param effect Effect variable name
    # @param [Hash] opts the optional parameters
    # @return [CommonResponse]
    def v1_votes_delete_post(cause, effect, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: VotesApi#v1_votes_delete_post ..."
      end
      
      # verify the required parameter 'cause' is set
      fail "Missing the required parameter 'cause' when calling v1_votes_delete_post" if cause.nil?
      
      # verify the required parameter 'effect' is set
      fail "Missing the required parameter 'effect' when calling v1_votes_delete_post" if effect.nil?
      
      # resource path
      path = "/v1/votes/delete".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cause'] = cause
      query_params[:'effect'] = effect

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
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommonResponse')
      if Configuration.debugging
        Configuration.logger.debug "API called: VotesApi#v1_votes_delete_post. Result: #{result.inspect}"
      end
      return result
    end
  end
end




