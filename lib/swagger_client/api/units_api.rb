require "uri"

module SwaggerClient
  class UnitsApi
    attr_accessor :api_client

    def initialize(api_client = nil)
      @api_client = api_client || Configuration.api_client
    end

    # Get unit categories
    # Get a list of the categories of measurement units such as &#39;Distance&#39;, &#39;Duration&#39;, &#39;Energy&#39;, &#39;Frequency&#39;, &#39;Miscellany&#39;, &#39;Pressure&#39;, &#39;Proportion&#39;, &#39;Rating&#39;, &#39;Temperature&#39;, &#39;Volume&#39;, and &#39;Weight&#39;.
    # @param [Hash] opts the optional parameters
    # @return [UnitCategory]
    def v1_unit_categories_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitsApi#v1_unit_categories_get ..."
      end
      
      # resource path
      path = "/v1/unitCategories".sub('{format}','json')

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
        :return_type => 'UnitCategory')
      if Configuration.debugging
        Configuration.logger.debug "API called: UnitsApi#v1_unit_categories_get. Result: #{result.inspect}"
      end
      return result
    end

    # Get all available units
    # Get all available units
    # @param [Hash] opts the optional parameters
    # @option opts [String] :unit_name Unit name
    # @option opts [String] :abbreviated_unit_name Restrict the results to a specific unit by providing the unit abbreviation.
    # @option opts [String] :category_name Restrict the results to a specific unit category by providing the unit category name.
    # @return [Array<Unit>]
    def v1_units_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitsApi#v1_units_get ..."
      end
      
      # resource path
      path = "/v1/units".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'unitName'] = opts[:'unit_name'] if opts[:'unit_name']
      query_params[:'abbreviatedUnitName'] = opts[:'abbreviated_unit_name'] if opts[:'abbreviated_unit_name']
      query_params[:'categoryName'] = opts[:'category_name'] if opts[:'category_name']

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
        :return_type => 'Array<Unit>')
      if Configuration.debugging
        Configuration.logger.debug "API called: UnitsApi#v1_units_get. Result: #{result.inspect}"
      end
      return result
    end

    # Units for Variable
    # Get a list of all possible units to use for a given variable
    # @param [Hash] opts the optional parameters
    # @option opts [String] :unit_name Name of Unit you want to retrieve
    # @option opts [String] :abbreviated_unit_name Abbreviated Unit Name of the unit you want
    # @option opts [String] :category_name Name of the category you want units for
    # @option opts [String] :variable Name of the variable you want units for
    # @return [Array<Unit>]
    def v1_units_variable_get(opts = {})
      if Configuration.debugging
        Configuration.logger.debug "Calling API: UnitsApi#v1_units_variable_get ..."
      end
      
      # resource path
      path = "/v1/unitsVariable".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'unitName'] = opts[:'unit_name'] if opts[:'unit_name']
      query_params[:'abbreviatedUnitName'] = opts[:'abbreviated_unit_name'] if opts[:'abbreviated_unit_name']
      query_params[:'categoryName'] = opts[:'category_name'] if opts[:'category_name']
      query_params[:'variable'] = opts[:'variable'] if opts[:'variable']

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
        :return_type => 'Array<Unit>')
      if Configuration.debugging
        Configuration.logger.debug "API called: UnitsApi#v1_units_variable_get. Result: #{result.inspect}"
      end
      return result
    end
  end
end




