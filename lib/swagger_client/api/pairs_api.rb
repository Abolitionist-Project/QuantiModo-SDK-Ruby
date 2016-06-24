=begin
QuantiModo

Welcome to QuantiModo API! QuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications. [Learn about QuantiModo](https://quantimo.do) or contact us at <api@quantimo.do>.         Before you get started, you will need to: * Sign in/Sign up, and add some data at [https://app.quantimo.do/api/v2/account/connectors](https://app.quantimo.do/api/v2/account/connectors) to try out the API for yourself * Create an app to get your client id and secret at [https://app.quantimo.do/api/v2/apps](https://app.quantimo.do/api/v2/apps) * As long as you're signed in, it will use your browser's cookie for authentication.  However, client applications must use OAuth2 tokens to access the API.     ## Application Endpoints These endpoints give you access to all authorized users' data for that application. ### Getting Application Token Make a `POST` request to `/api/v2/oauth/access_token`         * `grant_type` Must be `client_credentials`.         * `clientId` Your application's clientId.         * `client_secret` Your application's client_secret.         * `redirect_uri` Your application's redirect url.                ## Example Queries ### Query Options The standard query options for QuantiModo API are as described in the table below. These are the available query options in QuantiModo API: <table>            <thead>                <tr>                    <th>Parameter</th>                    <th>Description</th>                </tr>            </thead>            <tbody>                <tr>                    <td>limit</td>                    <td>The LIMIT is used to limit the number of results returned.  So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.</td>                </tr>                <tr>                    <td>offset</td>                    <td>Suppose you wanted to show results 11-20. You'd set the    offset to 10 and the limit to 10.</td>                </tr>                <tr>                    <td>sort</td>                    <td>Sort by given field. If the field is prefixed with '-', it    will sort in descending order.</td>                </tr>            </tbody>        </table>         ### Pagination Conventions Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters,         `/v2/variables?limit=20&offset=60`         Generally, you'll be retrieving new or updated user data. To avoid unnecessary API calls, you'll want to store your last refresh time locally.  Initially, it should be set to 0. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append         `?lastUpdated=(ge)&quot2013-01-D01T01:01:01&quot`         to your request.         Also for better pagination, you can get link to the records of first, last, next and previous page from response headers: * `Total-Count` - Total number of results for given query * `Link-First` - Link to get first page records * `Link-Last` - Link to get last page records * `Link-Prev` - Link to get previous records set * `Link-Next` - Link to get next records set         Remember, response header will be only sent when the record set is available. e.g. You will not get a ```Link-Last``` & ```Link-Next``` when you query for the last page.         ### Filter operators support API supports the following operators with filter parameters: <br> **Comparison operators**         Comparison operators allow you to limit results to those greater than, less than, or equal to a specified value for a specified attribute. These operators can be used with strings, numbers, and dates. The following comparison operators are available: * `gt` for `greater than` comparison * `ge` for `greater than or equal` comparison * `lt` for `less than` comparison * `le` for `less than or equal` comparison         They are included in queries using the following format:         `(<operator>)<value>`         For example, in order to filter value which is greater than 21, the following query parameter should be used:         `?value=(gt)21` <br><br> **Equals/In Operators**         It also allows filtering by the exact value of an attribute or by a set of values, depending on the type of value passed as a query parameter. If the value contains commas, the parameter is split on commas and used as array input for `IN` filtering, otherwise the exact match is applied. In order to only show records which have the value 42, the following query should be used:         `?value=42`         In order to filter records which have value 42 or 43, the following query should be used:         `?value=42,43` <br><br> **Like operators**         Like operators allow filtering using `LIKE` query. This operator is triggered if exact match operator is used, but value contains `%` sign as the first or last character. In order to filter records which category that start with `Food`, the following query should be used:         `?category=Food%` <br><br> **Negation operator**         It is possible to get negated results of a query by prefixed the operator with `!`. Some examples:         `//filter records except those with value are not 42 or 43`<br> `?value=!42,43`         `//filter records with value not greater than 21`<br> `?value=!(ge)21` <br><br> **Multiple constraints for single attribute**         It is possible to apply multiple constraints by providing an array of query filters:         Filter all records which value is greater than 20.2 and less than 20.3<br> `?value[]=(gt)20.2&value[]=(lt)20.3`         Filter all records which value is greater than 20.2 and less than 20.3 but not 20.2778<br> `?value[]=(gt)20.2&value[]=(lt)20.3&value[]=!20.2778`<br><br> 

OpenAPI spec version: 2.0.6

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module SwaggerClient
  class PairsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get pairs
    # Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
    # @param cause Original variable name for the explanatory or independent variable
    # @param effect Original variable name for the outcome or dependent variable
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
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
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order.
    # @return [Array<Pairs>]
    def v1_pairs_csv_get(cause, effect, opts = {})
      data, _status_code, _headers = v1_pairs_csv_get_with_http_info(cause, effect, opts)
      return data
    end

    # Get pairs
    # Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
    # @param cause Original variable name for the explanatory or independent variable
    # @param effect Original variable name for the outcome or dependent variable
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
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
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order.
    # @return [Array<(Array<Pairs>, Fixnum, Hash)>] Array<Pairs> data, response status code and response headers
    def v1_pairs_csv_get_with_http_info(cause, effect, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PairsApi.v1_pairs_csv_get ..."
      end
      # verify the required parameter 'cause' is set
      fail ArgumentError, "Missing the required parameter 'cause' when calling PairsApi.v1_pairs_csv_get" if cause.nil?
      # verify the required parameter 'effect' is set
      fail ArgumentError, "Missing the required parameter 'effect' when calling PairsApi.v1_pairs_csv_get" if effect.nil?
      # resource path
      local_var_path = "/v1/pairsCsv".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cause'] = cause
      query_params[:'effect'] = effect
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
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
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Pairs>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PairsApi#v1_pairs_csv_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get pairs
    # Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
    # @param cause Original variable name for the explanatory or independent variable
    # @param effect Original variable name for the outcome or dependent variable
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
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
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order.
    # @return [Array<Pairs>]
    def v1_pairs_get(cause, effect, opts = {})
      data, _status_code, _headers = v1_pairs_get_with_http_info(cause, effect, opts)
      return data
    end

    # Get pairs
    # Pairs cause measurements with effect measurements grouped over the duration of action after the onset delay.
    # @param cause Original variable name for the explanatory or independent variable
    # @param effect Original variable name for the outcome or dependent variable
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
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
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order.
    # @return [Array<(Array<Pairs>, Fixnum, Hash)>] Array<Pairs> data, response status code and response headers
    def v1_pairs_get_with_http_info(cause, effect, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PairsApi.v1_pairs_get ..."
      end
      # verify the required parameter 'cause' is set
      fail ArgumentError, "Missing the required parameter 'cause' when calling PairsApi.v1_pairs_get" if cause.nil?
      # verify the required parameter 'effect' is set
      fail ArgumentError, "Missing the required parameter 'effect' when calling PairsApi.v1_pairs_get" if effect.nil?
      # resource path
      local_var_path = "/v1/pairs".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cause'] = cause
      query_params[:'effect'] = effect
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
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
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
            auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Pairs>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PairsApi#v1_pairs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
