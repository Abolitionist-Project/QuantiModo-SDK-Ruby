require "uri"

module SwaggerClient
  class MeasurementsApi
    basePath = "https://localhost/api"
    # apiInvoker = APIInvoker

    # Get measurement sources
    # Returns a list of all the apps from which measurement data is obtained.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.measurement_sources_get(opts = {})
      

      # resource path
      path = "/measurementSources".sub('{format}','json')

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
      

      Swagger::Request.new(:GET, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body}).make
      nil
    end

    # Add a data source
    # Add a life-tracking app or device to the QuantiModo list of data sources.
    # @param name An array of names of data sources you want to add.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.measurement_sources_post(name, opts = {})
      
      # verify the required parameter 'name' is set
      raise "Missing the required parameter 'name' when calling measurement_sources_post" if name.nil?
      

      # resource path
      path = "/measurementSources".sub('{format}','json')

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
      post_body = Swagger::Request.object_to_http_body(name)
      

      Swagger::Request.new(:POST, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body}).make
      nil
    end

    # Get measurements for this user
    # Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten.
    # @param variable_name Name of the variable you want measurements for
    # @param [Hash] opts the optional parameters
    # @option opts [string] :unit The unit your want the measurements in
    # @option opts [string] :start_time The lower limit of measurements returned (Epoch)
    # @option opts [string] :end_time The upper limit of measurements returned (Epoch)
    # @option opts [int] :grouping_width The time (in seconds) over which measurements are grouped together
    # @option opts [string] :grouping_timezone The time (in seconds) over which measurements are grouped together
    # @return [nil]
    def self.measurements_get(variable_name, opts = {})
      
      # verify the required parameter 'variable_name' is set
      raise "Missing the required parameter 'variable_name' when calling measurements_get" if variable_name.nil?
      

      # resource path
      path = "/measurements".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'variableName'] = variable_name
      query_params[:'unit'] = opts[:'unit'] if opts[:'unit']
      query_params[:'startTime'] = opts[:'start_time'] if opts[:'start_time']
      query_params[:'endTime'] = opts[:'end_time'] if opts[:'end_time']
      query_params[:'groupingWidth'] = opts[:'grouping_width'] if opts[:'grouping_width']
      query_params[:'groupingTimezone'] = opts[:'grouping_timezone'] if opts[:'grouping_timezone']

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

    # Post a new set of measurements to the database
    # You can submit multiple measurements in a \&quot;measurements\&quot; sub-array.  If the variable these measurements correspond to does not already exist in the database, it will be automatically added.  The request body should look something like [{\&quot;measurements\&quot;:[{\&quot;timestamp\&quot;:1406419860,\&quot;value\&quot;:\&quot;1\&quot;,\&quot;note\&quot;:\&quot;I am a note about back pain.\&quot;},{\&quot;timestamp\&quot;:1406519865,\&quot;value\&quot;:\&quot;3\&quot;,\&quot;note\&quot;:\&quot;I am another note about back pain.\&quot;}],\&quot;name\&quot;:\&quot;Back Pain\&quot;,\&quot;source\&quot;:\&quot;QuantiModo\&quot;,\&quot;category\&quot;:\&quot;Symptoms\&quot;,\&quot;combinationOperation\&quot;:\&quot;MEAN\&quot;,\&quot;unit\&quot;:\&quot;/5\&quot;}]
    # @param measurements An array of measurements you want to insert.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.measurements_v2_post(measurements, opts = {})
      
      # verify the required parameter 'measurements' is set
      raise "Missing the required parameter 'measurements' when calling measurements_v2_post" if measurements.nil?
      

      # resource path
      path = "/measurements/v2".sub('{format}','json')

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
      post_body = Swagger::Request.object_to_http_body(measurements)
      

      Swagger::Request.new(:POST, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body}).make
      nil
    end

    # Get measurements range for this user
    # Get Unix time-stamp (epoch time) of the user&#39;s first and last measurements taken.
    # @param [Hash] opts the optional parameters
    # @option opts [string] :sources Enter source name to limit to specific source (varchar)
    # @option opts [int] :user If not specified, uses currently logged in user (bigint)
    # @return [nil]
    def self.measurements_range_get(opts = {})
      

      # resource path
      path = "/measurementsRange".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'sources'] = opts[:'sources'] if opts[:'sources']
      query_params[:'user'] = opts[:'user'] if opts[:'user']

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
