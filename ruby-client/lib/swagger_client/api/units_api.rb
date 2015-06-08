require "uri"

module SwaggerClient
  class UnitsApi
    basePath = "https://localhost/api"
    # apiInvoker = APIInvoker

    # Get unit categories
    # Get a list of the categories of measurement units such as &#39;Distance&#39;, &#39;Duration&#39;, &#39;Energy&#39;, &#39;Frequency&#39;, &#39;Miscellany&#39;, &#39;Pressure&#39;, &#39;Proportion&#39;, &#39;Rating&#39;, &#39;Temperature&#39;, &#39;Volume&#39;, and &#39;Weight&#39;.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.unit_categories_get(opts = {})
      

      # resource path
      path = "/unitCategories".sub('{format}','json')

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

    # Get all available units
    # Get all available units
    # @param [Hash] opts the optional parameters
    # @option opts [string] :unit_name Unit name
    # @option opts [string] :abbreviated_unit_name Restrict the results to a specific unit by providing the unit abbreviation.
    # @option opts [string] :category_name Restrict the results to a specific unit category by providing the unit category name.
    # @return [nil]
    def self.units_get(opts = {})
      

      # resource path
      path = "/units".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'unitName'] = opts[:'unit_name'] if opts[:'unit_name']
      query_params[:'abbreviatedUnitName'] = opts[:'abbreviated_unit_name'] if opts[:'abbreviated_unit_name']
      query_params[:'categoryName'] = opts[:'category_name'] if opts[:'category_name']

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
