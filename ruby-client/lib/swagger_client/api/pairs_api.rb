require "uri"

module SwaggerClient
  class PairsApi
    basePath = "https://localhost/api"
    # apiInvoker = APIInvoker

    # Get pairs
    # Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
    # @param cause Original variable name for the explanatory or independent variable
    # @param effect Original variable name for the outcome or dependent variable
    # @param [Hash] opts the optional parameters
    # @option opts [string] :cause_source Name of data source that the cause measurements should come from
    # @option opts [string] :cause_unit Abbreviated name for the unit cause measurements to be returned in
    # @option opts [string] :delay Delay before onset of action (in seconds) from the cause variable settings.
    # @option opts [string] :duration Duration of action (in seconds) from the cause variable settings.
    # @option opts [string] :effect_source Name of data source that the effectmeasurements should come from
    # @option opts [string] :effect_unit Abbreviated name for the unit effect measurements to be returned in
    # @option opts [string] :end_time The most recent date (in epoch time) for which we should return measurements
    # @option opts [string] :start_time The earliest date (in epoch time) for which we should return measurements
    # @return [nil]
    def self.pairs_get(cause, effect, opts = {})
      
      # verify the required parameter 'cause' is set
      raise "Missing the required parameter 'cause' when calling pairs_get" if cause.nil?
      
      # verify the required parameter 'effect' is set
      raise "Missing the required parameter 'effect' when calling pairs_get" if effect.nil?
      

      # resource path
      path = "/pairs".sub('{format}','json')

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
      

      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body}).make
      nil
    end
  end
end
