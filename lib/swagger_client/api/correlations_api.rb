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
  class CorrelationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get aggregated correlations
    # Get correlations based on the anonymized aggregate data from all QuantiModo users.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :effect ORIGINAL variable name of the effect variable for which the user desires correlations
    # @option opts [String] :cause ORIGINAL variable name of the cause variable for which the user desires correlations
    # @option opts [String] :correlation_coefficient Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action
    # @option opts [String] :onset_delay The number of seconds which pass following a cause measurement before an effect would likely be observed.
    # @option opts [String] :duration_of_action The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.
    # @option opts [String] :last_updated The time that this measurement was last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
    # @option opts [Integer] :offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order.
    # @return [Array<Correlation>]
    def v1_aggregated_correlations_get(opts = {})
      data, _status_code, _headers = v1_aggregated_correlations_get_with_http_info(opts)
      return data
    end

    # Get aggregated correlations
    # Get correlations based on the anonymized aggregate data from all QuantiModo users.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :effect ORIGINAL variable name of the effect variable for which the user desires correlations
    # @option opts [String] :cause ORIGINAL variable name of the cause variable for which the user desires correlations
    # @option opts [String] :correlation_coefficient Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action
    # @option opts [String] :onset_delay The number of seconds which pass following a cause measurement before an effect would likely be observed.
    # @option opts [String] :duration_of_action The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.
    # @option opts [String] :last_updated The time that this measurement was last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
    # @option opts [Integer] :offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order.
    # @return [Array<(Array<Correlation>, Fixnum, Hash)>] Array<Correlation> data, response status code and response headers
    def v1_aggregated_correlations_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorrelationsApi.v1_aggregated_correlations_get ..."
      end
      # resource path
      local_var_path = "/v1/aggregatedCorrelations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'effect'] = opts[:'effect'] if opts[:'effect']
      query_params[:'cause'] = opts[:'cause'] if opts[:'cause']
      query_params[:'correlationCoefficient'] = opts[:'correlation_coefficient'] if opts[:'correlation_coefficient']
      query_params[:'onsetDelay'] = opts[:'onset_delay'] if opts[:'onset_delay']
      query_params[:'durationOfAction'] = opts[:'duration_of_action'] if opts[:'duration_of_action']
      query_params[:'lastUpdated'] = opts[:'last_updated'] if opts[:'last_updated']
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
        :return_type => 'Array<Correlation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorrelationsApi#v1_aggregated_correlations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Store or Update a Correlation
    # Add correlation
    # @param body Provides correlation data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [nil]
    def v1_aggregated_correlations_post(body, opts = {})
      v1_aggregated_correlations_post_with_http_info(body, opts)
      return nil
    end

    # Store or Update a Correlation
    # Add correlation
    # @param body Provides correlation data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def v1_aggregated_correlations_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorrelationsApi.v1_aggregated_correlations_post ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CorrelationsApi.v1_aggregated_correlations_post" if body.nil?
      # resource path
      local_var_path = "/v1/aggregatedCorrelations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorrelationsApi#v1_aggregated_correlations_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get correlations
    # Get correlations.<br>Supported filter parameters:<br><ul><li><b>correlationCoefficient</b> - Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action</li><li><b>onsetDelay</b> - The number of seconds which pass following a cause measurement before an effect would likely be observed.</li><li><b>durationOfAction</b> - The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.</li><li><b>lastUpdated</b> - The time that this measurement was last updated in the UTC format \"YYYY-MM-DDThh:mm:ss\"</li></ul><br>
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :effect ORIGINAL variable name of the effect variable for which the user desires correlations
    # @option opts [String] :cause ORIGINAL variable name of the cause variable for which the user desires correlations
    # @option opts [String] :correlation_coefficient Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action
    # @option opts [String] :onset_delay The number of seconds which pass following a cause measurement before an effect would likely be observed.
    # @option opts [String] :duration_of_action The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.
    # @option opts [String] :last_updated The time that this measurement was last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
    # @option opts [Integer] :offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order.
    # @return [Array<Correlation>]
    def v1_correlations_get(opts = {})
      data, _status_code, _headers = v1_correlations_get_with_http_info(opts)
      return data
    end

    # Get correlations
    # Get correlations.&lt;br&gt;Supported filter parameters:&lt;br&gt;&lt;ul&gt;&lt;li&gt;&lt;b&gt;correlationCoefficient&lt;/b&gt; - Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action&lt;/li&gt;&lt;li&gt;&lt;b&gt;onsetDelay&lt;/b&gt; - The number of seconds which pass following a cause measurement before an effect would likely be observed.&lt;/li&gt;&lt;li&gt;&lt;b&gt;durationOfAction&lt;/b&gt; - The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.&lt;/li&gt;&lt;li&gt;&lt;b&gt;lastUpdated&lt;/b&gt; - The time that this measurement was last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;&lt;/li&gt;&lt;/ul&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :effect ORIGINAL variable name of the effect variable for which the user desires correlations
    # @option opts [String] :cause ORIGINAL variable name of the cause variable for which the user desires correlations
    # @option opts [String] :correlation_coefficient Pearson correlation coefficient between cause and effect after lagging by onset delay and grouping by duration of action
    # @option opts [String] :onset_delay The number of seconds which pass following a cause measurement before an effect would likely be observed.
    # @option opts [String] :duration_of_action The time in seconds over which the cause would be expected to exert a measurable effect. We have selected a default value for each variable. This default value may be replaced by a user specified by adjusting their variable user settings.
    # @option opts [String] :last_updated The time that this measurement was last updated in the UTC format \&quot;YYYY-MM-DDThh:mm:ss\&quot;
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0.
    # @option opts [Integer] :offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10.
    # @option opts [Integer] :sort Sort by given field. If the field is prefixed with &#x60;-, it will sort in descending order.
    # @return [Array<(Array<Correlation>, Fixnum, Hash)>] Array<Correlation> data, response status code and response headers
    def v1_correlations_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorrelationsApi.v1_correlations_get ..."
      end
      # resource path
      local_var_path = "/v1/correlations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'effect'] = opts[:'effect'] if opts[:'effect']
      query_params[:'cause'] = opts[:'cause'] if opts[:'cause']
      query_params[:'correlationCoefficient'] = opts[:'correlation_coefficient'] if opts[:'correlation_coefficient']
      query_params[:'onsetDelay'] = opts[:'onset_delay'] if opts[:'onset_delay']
      query_params[:'durationOfAction'] = opts[:'duration_of_action'] if opts[:'duration_of_action']
      query_params[:'lastUpdated'] = opts[:'last_updated'] if opts[:'last_updated']
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
        :return_type => 'Array<Correlation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorrelationsApi#v1_correlations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search user correlations for a given cause
    # Returns average of all correlations and votes for all user cause variables for a given cause. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
    # @param organization_id Organization ID
    # @param user_id User id
    # @param variable_name Effect variable name
    # @param organization_token Organization access token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :include_public Include public correlations, Can be \&quot;1\&quot; or empty.
    # @return [Array<Correlation>]
    def v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get(organization_id, user_id, variable_name, organization_token, opts = {})
      data, _status_code, _headers = v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get_with_http_info(organization_id, user_id, variable_name, organization_token, opts)
      return data
    end

    # Search user correlations for a given cause
    # Returns average of all correlations and votes for all user cause variables for a given cause. If parameter \&quot;include_public\&quot; is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
    # @param organization_id Organization ID
    # @param user_id User id
    # @param variable_name Effect variable name
    # @param organization_token Organization access token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :include_public Include public correlations, Can be \&quot;1\&quot; or empty.
    # @return [Array<(Array<Correlation>, Fixnum, Hash)>] Array<Correlation> data, response status code and response headers
    def v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get_with_http_info(organization_id, user_id, variable_name, organization_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorrelationsApi.v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling CorrelationsApi.v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get" if organization_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling CorrelationsApi.v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get" if user_id.nil?
      # verify the required parameter 'variable_name' is set
      fail ArgumentError, "Missing the required parameter 'variable_name' when calling CorrelationsApi.v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get" if variable_name.nil?
      # verify the required parameter 'organization_token' is set
      fail ArgumentError, "Missing the required parameter 'organization_token' when calling CorrelationsApi.v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get" if organization_token.nil?
      # resource path
      local_var_path = "/v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/causes".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'organization_token'] = organization_token
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'includePublic'] = opts[:'include_public'] if opts[:'include_public']

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
        :return_type => 'Array<Correlation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorrelationsApi#v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search user correlations for a given cause
    # Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \"include_public\" is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
    # @param organization_id Organization ID
    # @param user_id User id
    # @param variable_name Cause variable name
    # @param organization_token Organization access token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :include_public Include public correlations, Can be \&quot;1\&quot; or empty.
    # @return [Array<CommonResponse>]
    def v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get(organization_id, user_id, variable_name, organization_token, opts = {})
      data, _status_code, _headers = v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get_with_http_info(organization_id, user_id, variable_name, organization_token, opts)
      return data
    end

    # Search user correlations for a given cause
    # Returns average of all correlations and votes for all user cause variables for a given effect. If parameter \&quot;include_public\&quot; is used, it also returns public correlations. User correlation overwrites or supersedes public correlation.
    # @param organization_id Organization ID
    # @param user_id User id
    # @param variable_name Cause variable name
    # @param organization_token Organization access token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :include_public Include public correlations, Can be \&quot;1\&quot; or empty.
    # @return [Array<(Array<CommonResponse>, Fixnum, Hash)>] Array<CommonResponse> data, response status code and response headers
    def v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get_with_http_info(organization_id, user_id, variable_name, organization_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorrelationsApi.v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling CorrelationsApi.v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get" if organization_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling CorrelationsApi.v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get" if user_id.nil?
      # verify the required parameter 'variable_name' is set
      fail ArgumentError, "Missing the required parameter 'variable_name' when calling CorrelationsApi.v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get" if variable_name.nil?
      # verify the required parameter 'organization_token' is set
      fail ArgumentError, "Missing the required parameter 'organization_token' when calling CorrelationsApi.v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get" if organization_token.nil?
      # resource path
      local_var_path = "/v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/effects".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'userId' + '}', user_id.to_s).sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'organization_token'] = organization_token
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'include_public'] = opts[:'include_public'] if opts[:'include_public']

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
        :return_type => 'Array<CommonResponse>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorrelationsApi#v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get average correlations for variables containing search term
    # Returns the average correlations from all users for all public variables that contain the characters in the search query. Returns average of all users public variable correlations with a specified cause or effect.
    # @param search Name of the variable that you want to know the causes or effects of.
    # @param effect_or_cause Setting this to effect indicates that the searched variable is the effect and that the causes of this variable should be returned.  cause indicates that the searched variable is the cause and the effects should be returned.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<Correlation>]
    def v1_public_correlations_search_search_get(search, effect_or_cause, opts = {})
      data, _status_code, _headers = v1_public_correlations_search_search_get_with_http_info(search, effect_or_cause, opts)
      return data
    end

    # Get average correlations for variables containing search term
    # Returns the average correlations from all users for all public variables that contain the characters in the search query. Returns average of all users public variable correlations with a specified cause or effect.
    # @param search Name of the variable that you want to know the causes or effects of.
    # @param effect_or_cause Setting this to effect indicates that the searched variable is the effect and that the causes of this variable should be returned.  cause indicates that the searched variable is the cause and the effects should be returned.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(Array<Correlation>, Fixnum, Hash)>] Array<Correlation> data, response status code and response headers
    def v1_public_correlations_search_search_get_with_http_info(search, effect_or_cause, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorrelationsApi.v1_public_correlations_search_search_get ..."
      end
      # verify the required parameter 'search' is set
      fail ArgumentError, "Missing the required parameter 'search' when calling CorrelationsApi.v1_public_correlations_search_search_get" if search.nil?
      # verify the required parameter 'effect_or_cause' is set
      fail ArgumentError, "Missing the required parameter 'effect_or_cause' when calling CorrelationsApi.v1_public_correlations_search_search_get" if effect_or_cause.nil?
      # resource path
      local_var_path = "/v1/public/correlations/search/{search}".sub('{format}','json').sub('{' + 'search' + '}', search.to_s)

      # query parameters
      query_params = {}
      query_params[:'effectOrCause'] = effect_or_cause
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

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
        :return_type => 'Array<Correlation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorrelationsApi#v1_public_correlations_search_search_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search user correlations for a given effect
    # Returns average of all correlations and votes for all user cause variables for a given effect
    # @param variable_name Effect variable name
    # @param [Hash] opts the optional parameters
    # @return [Array<Correlation>]
    def v1_variables_variable_name_causes_get(variable_name, opts = {})
      data, _status_code, _headers = v1_variables_variable_name_causes_get_with_http_info(variable_name, opts)
      return data
    end

    # Search user correlations for a given effect
    # Returns average of all correlations and votes for all user cause variables for a given effect
    # @param variable_name Effect variable name
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Correlation>, Fixnum, Hash)>] Array<Correlation> data, response status code and response headers
    def v1_variables_variable_name_causes_get_with_http_info(variable_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorrelationsApi.v1_variables_variable_name_causes_get ..."
      end
      # verify the required parameter 'variable_name' is set
      fail ArgumentError, "Missing the required parameter 'variable_name' when calling CorrelationsApi.v1_variables_variable_name_causes_get" if variable_name.nil?
      # resource path
      local_var_path = "/v1/variables/{variableName}/causes".sub('{format}','json').sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'Array<Correlation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorrelationsApi#v1_variables_variable_name_causes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search user correlations for a given cause
    # Returns average of all correlations and votes for all user effect variables for a given cause
    # @param variable_name Cause variable name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<Correlation>]
    def v1_variables_variable_name_effects_get(variable_name, opts = {})
      data, _status_code, _headers = v1_variables_variable_name_effects_get_with_http_info(variable_name, opts)
      return data
    end

    # Search user correlations for a given cause
    # Returns average of all correlations and votes for all user effect variables for a given cause
    # @param variable_name Cause variable name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(Array<Correlation>, Fixnum, Hash)>] Array<Correlation> data, response status code and response headers
    def v1_variables_variable_name_effects_get_with_http_info(variable_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorrelationsApi.v1_variables_variable_name_effects_get ..."
      end
      # verify the required parameter 'variable_name' is set
      fail ArgumentError, "Missing the required parameter 'variable_name' when calling CorrelationsApi.v1_variables_variable_name_effects_get" if variable_name.nil?
      # resource path
      local_var_path = "/v1/variables/{variableName}/effects".sub('{format}','json').sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

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
        :return_type => 'Array<Correlation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorrelationsApi#v1_variables_variable_name_effects_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search public correlations for a given effect
    # Returns average of all correlations and votes for all public cause variables for a given effect
    # @param variable_name Effect variable name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<Correlation>]
    def v1_variables_variable_name_public_causes_get(variable_name, opts = {})
      data, _status_code, _headers = v1_variables_variable_name_public_causes_get_with_http_info(variable_name, opts)
      return data
    end

    # Search public correlations for a given effect
    # Returns average of all correlations and votes for all public cause variables for a given effect
    # @param variable_name Effect variable name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(Array<Correlation>, Fixnum, Hash)>] Array<Correlation> data, response status code and response headers
    def v1_variables_variable_name_public_causes_get_with_http_info(variable_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorrelationsApi.v1_variables_variable_name_public_causes_get ..."
      end
      # verify the required parameter 'variable_name' is set
      fail ArgumentError, "Missing the required parameter 'variable_name' when calling CorrelationsApi.v1_variables_variable_name_public_causes_get" if variable_name.nil?
      # resource path
      local_var_path = "/v1/variables/{variableName}/public/causes".sub('{format}','json').sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

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
        :return_type => 'Array<Correlation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorrelationsApi#v1_variables_variable_name_public_causes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search public correlations for a given cause
    # Returns average of all correlations and votes for all public cause variables for a given cause
    # @param variable_name Cause variable name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<Correlation>]
    def v1_variables_variable_name_public_effects_get(variable_name, opts = {})
      data, _status_code, _headers = v1_variables_variable_name_public_effects_get_with_http_info(variable_name, opts)
      return data
    end

    # Search public correlations for a given cause
    # Returns average of all correlations and votes for all public cause variables for a given cause
    # @param variable_name Cause variable name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(Array<Correlation>, Fixnum, Hash)>] Array<Correlation> data, response status code and response headers
    def v1_variables_variable_name_public_effects_get_with_http_info(variable_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorrelationsApi.v1_variables_variable_name_public_effects_get ..."
      end
      # verify the required parameter 'variable_name' is set
      fail ArgumentError, "Missing the required parameter 'variable_name' when calling CorrelationsApi.v1_variables_variable_name_public_effects_get" if variable_name.nil?
      # resource path
      local_var_path = "/v1/variables/{variableName}/public/effects".sub('{format}','json').sub('{' + 'variableName' + '}', variable_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

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
        :return_type => 'Array<Correlation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorrelationsApi#v1_variables_variable_name_public_effects_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete vote
    # Delete previously posted vote
    # @param body The cause and effect variable names for the predictor vote to be deleted.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [CommonResponse]
    def v1_votes_delete_post(body, opts = {})
      data, _status_code, _headers = v1_votes_delete_post_with_http_info(body, opts)
      return data
    end

    # Delete vote
    # Delete previously posted vote
    # @param body The cause and effect variable names for the predictor vote to be deleted.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(CommonResponse, Fixnum, Hash)>] CommonResponse data, response status code and response headers
    def v1_votes_delete_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorrelationsApi.v1_votes_delete_post ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CorrelationsApi.v1_votes_delete_post" if body.nil?
      # resource path
      local_var_path = "/v1/votes/delete".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommonResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorrelationsApi#v1_votes_delete_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Post or update vote
    # This is to enable users to indicate their opinion on the plausibility of a causal relationship between a treatment and outcome. QuantiModo incorporates crowd-sourced plausibility estimations into their algorithm. This is done allowing user to indicate their view of the plausibility of each relationship with thumbs up/down buttons placed next to each prediction.
    # @param body Contains the cause variable, effect variable, and vote value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [CommonResponse]
    def v1_votes_post(body, opts = {})
      data, _status_code, _headers = v1_votes_post_with_http_info(body, opts)
      return data
    end

    # Post or update vote
    # This is to enable users to indicate their opinion on the plausibility of a causal relationship between a treatment and outcome. QuantiModo incorporates crowd-sourced plausibility estimations into their algorithm. This is done allowing user to indicate their view of the plausibility of each relationship with thumbs up/down buttons placed next to each prediction.
    # @param body Contains the cause variable, effect variable, and vote value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(CommonResponse, Fixnum, Hash)>] CommonResponse data, response status code and response headers
    def v1_votes_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorrelationsApi.v1_votes_post ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CorrelationsApi.v1_votes_post" if body.nil?
      # resource path
      local_var_path = "/v1/votes".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommonResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorrelationsApi#v1_votes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
