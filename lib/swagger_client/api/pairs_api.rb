require "uri"

module SwaggerClient
  class PairsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get pairs
    # Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
    # @param cause Original variable name for the explanatory or independent variable
    # @param effect Original variable name for the outcome or dependent variable
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cause_source Name of data source that the cause measurements should come from
    # @option opts [String] :cause_unit Abbreviated name for the unit cause measurements to be returned in
    # @option opts [String] :delay Delay before onset of action (in seconds) from the cause variable settings.
    # @option opts [String] :duration Duration of action (in seconds) from the cause variable settings.
    # @option opts [String] :effect_source Name of data source that the effectmeasurements should come from
    # @option opts [String] :effect_unit Abbreviated name for the unit effect measurements to be returned in
    # @option opts [String] :end_time The most recent date (in epoch time) for which we should return measurements
    # @option opts [String] :start_time The earliest date (in epoch time) for which we should return measurements
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
    # @option opts [Integer] :offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
    # @return [Array<Pairs>]
    def v1_pairs_get(cause, effect, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: PairsApi#v1_pairs_get ..."
      end
      
      # verify the required parameter 'cause' is set
      fail "Missing the required parameter 'cause' when calling v1_pairs_get" if cause.nil?
      
      # verify the required parameter 'effect' is set
      fail "Missing the required parameter 'effect' when calling v1_pairs_get" if effect.nil?
      
      # resource path
      path = "/v1/pairs".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cause'] = cause
      query_params[:'effect'] = effect
      query_params[:'causeSource'] = opts[:'cause_source'] if opts[:'cause_source']
      query_params[:'causeUnit'] = opts[:'cause_unit'] if opts[:'cause_unit']
      query_params[:'delay'] = opts[:'delay'] if opts[:'delay']
      query_params[:'duration'] = opts[:'duration'] if opts[:'duration']
      query_params[:'effectSource'] = opts[:'effect_source'] if opts[:'effect_source']
      query_params[:'effectUnit'] = opts[:'effect_unit'] if opts[:'effect_unit']
      query_params[:'endTime'] = opts[:'end_time'] if opts[:'end_time']
      query_params[:'startTime'] = opts[:'start_time'] if opts[:'start_time']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'sort'] = opts[:'sort'] if opts[:'sort']

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
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Pairs>')
      if Configuration.debugging
        Configuration.logger.debug "API called: PairsApi#v1_pairs_get. Result: #{result.inspect}"
      end
      return result
    end
  end
end




