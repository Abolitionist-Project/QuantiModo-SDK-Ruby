require "uri"

module SwaggerClient
  class MeasurementsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get measurement sources
    # Returns a list of all the apps from which measurement data is obtained.
    # @param [Hash] opts the optional parameters
    # @return [MeasurementSource]
    def v1_measurement_sources_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementsApi#v1_measurement_sources_get ..."
      end
      
      # resource path
      path = "/v1/measurementSources".sub('{format}','json')

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
      post_body = nil
      

      auth_names = ['oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MeasurementSource')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementsApi#v1_measurement_sources_get. Result: #{result.inspect}"
      end
      return result
    end

    # Add a data source
    # Add a life-tracking app or device to the QuantiModo list of data sources.
    # @param name An array of names of data sources you want to add.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_measurement_sources_post(name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementsApi#v1_measurement_sources_post ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling v1_measurement_sources_post" if name.nil?
      
      # resource path
      path = "/v1/measurementSources".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(name)
      

      auth_names = ['oauth2']
      @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementsApi#v1_measurement_sources_post"
      end
      return nil
    end

    # Get measurements for this user
    # Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. &lt;br&gt;Supported filter parameters:&lt;br&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;value&lt;/b&gt; - Value of measurement&lt;/li&gt;&lt;li&gt;&lt;b&gt;lastUpdated&lt;/b&gt; - The time that this measurement was created or last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;&lt;/li&gt;&lt;/ul&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :variable_name Name of the variable you want measurements for
    # @option opts [String] :source Name of the source you want measurements for (supports exact name match only)
    # @option opts [String] :value Value of measurement
    # @option opts [String] :last_updated The time that this measurement was created or last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;
    # @option opts [String] :unit The unit you want the measurements in
    # @option opts [String] :start_time The lower limit of measurements returned (Epoch)
    # @option opts [String] :end_time The upper limit of measurements returned (Epoch)
    # @option opts [Integer] :grouping_width The time (in seconds) over which measurements are grouped together
    # @option opts [String] :grouping_timezone The time (in seconds) over which measurements are grouped together
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
    # @option opts [Integer] :offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
    # @return [Measurement]
    def v1_measurements_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementsApi#v1_measurements_get ..."
      end
      
      # resource path
      path = "/v1/measurements".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'variableName'] = opts[:'variable_name'] if opts[:'variable_name']
      query_params[:'source'] = opts[:'source'] if opts[:'source']
      query_params[:'value'] = opts[:'value'] if opts[:'value']
      query_params[:'lastUpdated'] = opts[:'last_updated'] if opts[:'last_updated']
      query_params[:'unit'] = opts[:'unit'] if opts[:'unit']
      query_params[:'startTime'] = opts[:'start_time'] if opts[:'start_time']
      query_params[:'endTime'] = opts[:'end_time'] if opts[:'end_time']
      query_params[:'groupingWidth'] = opts[:'grouping_width'] if opts[:'grouping_width']
      query_params[:'groupingTimezone'] = opts[:'grouping_timezone'] if opts[:'grouping_timezone']
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
        :return_type => 'Measurement')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementsApi#v1_measurements_get. Result: #{result.inspect}"
      end
      return result
    end

    # Post a new set or update existing measurements to the database
    # You can submit or update multiple measurements in a \&quot;measurements\&quot; sub-array.  If the variable these measurements correspond to does not already exist in the database, it will be automatically added.  The request body should look something like [{\&quot;measurements\&quot;:[{\&quot;startTime\&quot;:1439389320,\&quot;value\&quot;:\&quot;3\&quot;}],\&quot;name\&quot;:\&quot;Acne (out of 5)\&quot;,\&quot;source\&quot;:\&quot;QuantiModo\&quot;,\&quot;category\&quot;:\&quot;Symptoms\&quot;,\&quot;combinationOperation\&quot;:\&quot;MEAN\&quot;,\&quot;unit\&quot;:\&quot;/5\&quot;}]
    # @param measurements An array of measurements you want to insert.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_measurements_post(measurements, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementsApi#v1_measurements_post ..."
      end
      
      # verify the required parameter 'measurements' is set
      fail "Missing the required parameter 'measurements' when calling v1_measurements_post" if measurements.nil?
      
      # resource path
      path = "/v1/measurements".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(measurements)
      

      auth_names = ['oauth2']
      @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementsApi#v1_measurements_post"
      end
      return nil
    end

    # Get daily measurements for this user
    # Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten. &lt;br&gt;Supported filter parameters:&lt;br&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;value&lt;/b&gt; - Value of measurement&lt;/li&gt;&lt;li&gt;&lt;b&gt;lastUpdated&lt;/b&gt; - The time that this measurement was created or last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;&lt;/li&gt;&lt;/ul&gt;&lt;br&gt;
    # @param variable_name Name of the variable you want measurements for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :abbreviated_unit_name The unit your want the measurements in
    # @option opts [String] :start_time The lower limit of measurements returned (Iso8601)
    # @option opts [String] :end_time The upper limit of measurements returned (Iso8601)
    # @option opts [Integer] :grouping_width The time (in seconds) over which measurements are grouped together
    # @option opts [String] :grouping_timezone The time (in seconds) over which measurements are grouped together
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
    # @option opts [Integer] :offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with `-, it will sort in descending order.
    # @return [Measurement]
    def v1_measurements_daily_get(variable_name, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementsApi#v1_measurements_daily_get ..."
      end
      
      # verify the required parameter 'variable_name' is set
      fail "Missing the required parameter 'variable_name' when calling v1_measurements_daily_get" if variable_name.nil?
      
      # resource path
      path = "/v1/measurements/daily".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'variableName'] = variable_name
      query_params[:'abbreviatedUnitName'] = opts[:'abbreviated_unit_name'] if opts[:'abbreviated_unit_name']
      query_params[:'startTime'] = opts[:'start_time'] if opts[:'start_time']
      query_params[:'endTime'] = opts[:'end_time'] if opts[:'end_time']
      query_params[:'groupingWidth'] = opts[:'grouping_width'] if opts[:'grouping_width']
      query_params[:'groupingTimezone'] = opts[:'grouping_timezone'] if opts[:'grouping_timezone']
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
        :return_type => 'Measurement')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementsApi#v1_measurements_daily_get. Result: #{result.inspect}"
      end
      return result
    end

    # Get measurements range for this user
    # Get Unix time-stamp (epoch time) of the user&#39;s first and last measurements taken.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sources Enter source name to limit to specific source (varchar)
    # @option opts [Integer] :user If not specified, uses currently logged in user (bigint)
    # @return [MeasurementRange]
    def v1_measurements_range_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementsApi#v1_measurements_range_get ..."
      end
      
      # resource path
      path = "/v1/measurementsRange".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'sources'] = opts[:'sources'] if opts[:'sources']
      query_params[:'user'] = opts[:'user'] if opts[:'user']

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
        :return_type => 'MeasurementRange')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementsApi#v1_measurements_range_get. Result: #{result.inspect}"
      end
      return result
    end
  end
end




