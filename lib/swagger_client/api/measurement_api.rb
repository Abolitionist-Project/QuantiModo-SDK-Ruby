require "uri"

module SwaggerClient
  class MeasurementApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get measurements for this user
    # Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Integer] :user_id ID of user that owns this measurement
    # @option opts [String] :client_id The ID of the client application which originally stored the measurement
    # @option opts [Integer] :connector_id The id for the connector data source from which the measurement was obtained
    # @option opts [Integer] :variable_id ID of the variable for which we are creating the measurement records
    # @option opts [Integer] :source_id Application or device used to record the measurement values
    # @option opts [String] :start_time start time for the measurement event. Use ISO 8601 datetime format
    # @option opts [Float] :value The value of the measurement after conversion to the default unit for that variable
    # @option opts [Integer] :unit_id The default unit id for the variable
    # @option opts [Float] :original_value Unconverted value of measurement as originally posted (before conversion to default unit)
    # @option opts [Integer] :original_unit_id Unit id of the measurement as originally submitted
    # @option opts [Integer] :duration Duration of the event being measurement in seconds
    # @option opts [String] :note An optional note the user may include with their measurement
    # @option opts [Float] :latitude Latitude at which the measurement was taken
    # @option opts [Float] :longitude Longitude at which the measurement was taken
    # @option opts [String] :location Optional human readable name for the location where the measurement was recorded
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [String] :error An error message if there is a problem with the measurement
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_13]
    def measurements_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_get ..."
      end
      
      # resource path
      path = "/measurements".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'user_id'] = opts[:'user_id'] if opts[:'user_id']
      query_params[:'client_id'] = opts[:'client_id'] if opts[:'client_id']
      query_params[:'connector_id'] = opts[:'connector_id'] if opts[:'connector_id']
      query_params[:'variable_id'] = opts[:'variable_id'] if opts[:'variable_id']
      query_params[:'source_id'] = opts[:'source_id'] if opts[:'source_id']
      query_params[:'start_time'] = opts[:'start_time'] if opts[:'start_time']
      query_params[:'value'] = opts[:'value'] if opts[:'value']
      query_params[:'unit_id'] = opts[:'unit_id'] if opts[:'unit_id']
      query_params[:'original_value'] = opts[:'original_value'] if opts[:'original_value']
      query_params[:'original_unit_id'] = opts[:'original_unit_id'] if opts[:'original_unit_id']
      query_params[:'duration'] = opts[:'duration'] if opts[:'duration']
      query_params[:'note'] = opts[:'note'] if opts[:'note']
      query_params[:'latitude'] = opts[:'latitude'] if opts[:'latitude']
      query_params[:'longitude'] = opts[:'longitude'] if opts[:'longitude']
      query_params[:'location'] = opts[:'location'] if opts[:'location']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
      query_params[:'error'] = opts[:'error'] if opts[:'error']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'offset'] = opts[:'offset'] if opts[:'offset']
      query_params[:'sort'] = opts[:'sort'] if opts[:'sort']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['quantimodo_oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_13')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_get. Result: #{result.inspect}"
      end
      return result
    end

    # Post a new set or update existing measurements to the database
    # You can submit or update multiple measurements in a measurements sub-array.  If the variable these measurements correspond to does not already exist in the database, it will be automatically added.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [MeasurementPost] :body Measurement that should be stored
    # @return [inline_response_200_13]
    def measurements_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_post ..."
      end
      
      # resource path
      path = "/measurements".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = ['quantimodo_oauth2']
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_13')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Measurements CSV
    # Download a CSV containing all user measurements
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [File]
    def measurements_csv_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_csv_get ..."
      end
      
      # resource path
      path = "/measurements/csv".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['text/csv']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['quantimodo_oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_csv_get. Result: #{result.inspect}"
      end
      return result
    end

    # Post Request for Measurements CSV
    # Use this endpoint to schedule a CSV export containing all user measurements to be emailed to the user within 24 hours.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Integer]
    def measurements_request_csv_post(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_request_csv_post ..."
      end
      
      # resource path
      path = "/measurements/request_csv".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['quantimodo_oauth2']
      result = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_request_csv_post. Result: #{result.inspect}"
      end
      return result
    end

    # Get Measurement
    # Get Measurement
    # @param id id of Measurement
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_14]
    def measurements_id_get(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling measurements_id_get" if id.nil?
      
      # resource path
      path = "/measurements/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['quantimodo_oauth2']
      result = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_14')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_id_get. Result: #{result.inspect}"
      end
      return result
    end

    # Update Measurement
    # Update Measurement
    # @param id id of Measurement
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Measurement] :body Measurement that should be updated
    # @return [inline_response_200_2]
    def measurements_id_put(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling measurements_id_put" if id.nil?
      
      # resource path
      path = "/measurements/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      

      auth_names = ['quantimodo_oauth2']
      result = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_2')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_id_put. Result: #{result.inspect}"
      end
      return result
    end

    # Delete Measurement
    # Delete Measurement
    # @param id id of Measurement
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_2]
    def measurements_id_delete(id, opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: MeasurementApi#measurements_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling measurements_id_delete" if id.nil?
      
      # resource path
      path = "/measurements/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['quantimodo_oauth2']
      result = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_2')
      if Configuration.debugging
        Configuration.logger.debug "API called: MeasurementApi#measurements_id_delete. Result: #{result.inspect}"
      end
      return result
    end
  end
end




