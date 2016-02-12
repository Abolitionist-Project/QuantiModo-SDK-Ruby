=begin
Quantimodo API

Welcome to QuantiModo API! QuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications. [Learn about QuantiModo](https://quantimo.do) or contact us at <api@quantimo.do>.\n\nBefore you get started, you will need to:\n* Sign in/Sign up, and add some data at [https://quantipress.quantimo.do/import-data/](https://quantipress.quantimo.do/import-data/) to try out the API for yourself\n* As long as you're signed in, it will use your browser's cookie for authentication.  However, client applications must use OAuth2 tokens to access the API.\n\n## Social Authentication flow with JWT Token\nHere is the flow for how social authentication works with JWT Token:\n\nSupported Providers:\n * facebook\n * google\n * twitter\n\n1.**Client:** Need to open popup with social auth url (`https://app/quantimo.do/api/v2/auth/social/login?provider={provider}&redirectUrl={url}`) of server with `provider` and `redirectUrl` (Url should be registered with our social apps. Facebook and Twitter are fine with any redirect url with the same domain base url but Google needs exact redirect url)\n\n2.**Server:** Server will redirect user to that provider to get access\n\n3.**Client:** After successful or failed authentication, it will be redirected to given `redirectUrl` with code or error\n\n4.**Client:** Client need to get that code and need to send Ajax request to server on `https://app.quantimo.do/api/v2/auth/social/authorizeCode?provider={provider}&code={authorizationCode}`\n\n5.**Server:** Server will authorize that code from social connection and will authenticate user and will retrieve user info\n\n6.**Server:** Server will try to find existing user by unique identity. If user exist then it will do a login for that or it will create new user and will do login\n\n7.**Server:** Once user is found/created, it will return a JWT token for that user in response\n\n\n## Authentication via access token for Native App\nIf you are using native authentication via Facebook or Google SDKs then you should use the following flow:\n\n1.**Client:** Do a native authentication via Native Mobile app and get an access token\n\n2.**Client:** Send Ajax request with provider name and access token on `https://app.quantimo.do/api/v2/auth/social/authorizeToken?provider={provider}&accessToken={accessToken}&refreshToken={refreshToken}` (`refreshToken` is optional)\n\n3.**Server:** Server will try to get user info and will find existing user by unique identity. If user exist then it will do a login for that or it will create new user and will do login\n\n4.**Server:** Once user is found/created, it will return a JWT token for that user in response\n\n5.**Client:** After getting the JWT token to get a QM access token follow these steps and include your JWT token in them as a header (Authorization: Bearer **{yourJWThere}**) or as a url parameter (https://app.quantimo.do/api/v2/oauth/authorize?token={yourJWThere}).\n\n## Oauth2 Authentication(QM Access Token)\n* First step is creating an application on [https://admin.quantimo.do](https://admin.quantimo.do) so you can have client_id and client_secret for testing out/using our api\n* You can implement OAuth2 authentication to your application using our **OAuth2** endpoints.\n\n### Request Authorization Code\nBasically you need to redirect users to `/api/v2/oauth/authorize` endpoint to get an authorization code with following parameters:\n* `client_id` This is the unique ID that QuantiModo uses to identify your application.\n* `scope` Scopes include basic, readmeasurements, and writemeasurements. The `basic` scope allows you to read user info (displayname, email, etc). The `readmeasurements` scope allows one to read a user's data. The `writemeasurements` scope allows you to write user data. Separate multiple scopes by a space.\n* `redirect_uri` The redirect URI is the URL within your client application that will receive the OAuth2 credentials.\n* `state` An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI.\n* `response_type` If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment.\n\n### Request Access Token\nAfter user approves your access to the given scope, you'll recevive an authorization code to request an access token. This time make a `POST` request to `/api/v2/oauth/access_token` with parameters including:\n* `grant_type` Can be `authorization_code` or `refresh_token` since we are getting the `access_token` for the first time we don't have a `refresh_token` so this must be `authorization_code`.\n* `client_id` The client id you used to receive an `authorization_code`.\n* `client_secret` Your client secret which you received with the client id.\n* `code` Authorization code you received with the previous request.\n* `redirect_uri` Your application's redirect url.\n\n### Refreshing Access Token\nAccess tokens expire at some point, to continue using our api you need to refresh them with `refresh_token` you received along with the `access_token`. To do this make a `POST` request to `/api/v2/oauth/access_token` with correct parameters, which are:\n* `grant_type` This time grant type must be `refresh_token` since we have it.\n* `client_id` Your application's client id.\n* `client_secret` Your application's client secret.\n* `refresh_token` The refresh token you received with the `access_token`.\n\nEvery request you make to this endpoint will give you a new refresh token and make the old one expired. So you can keep getting new access tokens with new refresh tokens.\n### Using Access Token\nCurrently we support 2 ways for this, you can't use both at the same time.\n* Adding access token to the request header as `Authorization: Bearer {access_token}`\n* Adding to the url as a query parameter `?access_token={access_token}`\n\nYou can read more about OAuth2 from [here](http://oauth.net/2/)\n\n## Application Endpoints\nThese endpoints give you access to all authorized users' data for that application.\n### Getting Application Token\nMake a `POST` request to `/api/v2/oauth/access_token`\n * `grant_type` Must be `client_credentials`.\n * `client_id` Your application's client_id.\n * `client_secret` Your application's client_secret.\n * `redirect_uri` Your application's redirect url.\n\n## Example Queries\n### Query Options\nThe standard query options for QuantiModo API are as described in the table below. These are the available query options in QuantiModo API:\n<table>\n    <thead>\n        <tr>\n            <th>Parameter</th>\n            <th>Description</th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr>\n            <td>limit</td>\n            <td>The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.</td>\n        </tr>\n        <tr>\n            <td>offset</td>\n            <td>Suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.</td>\n        </tr>\n        <tr>\n            <td>sort</td>\n            <td>Sort by given field. If the field is prefixed with '-', it will sort in descending order.</td>\n        </tr>\n    </tbody>\n</table>\n\n### Pagination Conventions\nSince the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters,\n\n`/v2/variables?limit=20&offset=60`\n\nGenerally, you'll be retrieving new or updated user data. To avoid unnecessary API calls, you'll want to store your last refresh time locally.  Initially, it should be set to 0. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append\n\n`?lastUpdated=(ge)&quot2013-01-D01T01:01:01&quot`\n\nto your request.\n\nAlso for better pagination, you can get link to the records of first, last, next and previous page from response headers:\n* `Total-Count` - Total number of results for given query\n* `Link-First` - Link to get first page records\n* `Link-Last` - Link to get last page records\n* `Link-Prev` - Link to get previous records set\n* `Link-Next` - Link to get next records set\n\nRemember, response header will be only sent when the record set is available. e.g. You will not get a ```Link-Last``` & ```Link-Next``` when you query for the last page.\n\n### Filter operators support\nAPI supports the following operators with filter parameters:\n<br>\n**Comparison operators**\n\nComparison operators allow you to limit results to those greater than, less than, or equal to a specified value for a specified attribute. These operators can be used with strings, numbers, and dates. The following comparison operators are available:\n* `gt` for `greater than` comparison\n* `ge` for `greater than or equal` comparison\n* `lt` for `less than` comparison\n* `le` for `less than or equal` comparison\n\nThey are included in queries using the following format:\n\n`(<operator>)<value>`\n\nFor example, in order to filter value which is greater than 21, the following query parameter should be used:\n\n`?value=(gt)21`\n<br><br>\n**Equals/In Operators**\n\nIt also allows filtering by the exact value of an attribute or by a set of values, depending on the type of value passed as a query parameter. If the value contains commas, the parameter is split on commas and used as array input for `IN` filtering, otherwise the exact match is applied. In order to only show records which have the value 42, the following query should be used:\n\n`?value=42`\n\nIn order to filter records which have value 42 or 43, the following query should be used:\n\n`?value=42,43`\n<br><br>\n**Like operators**\n\nLike operators allow filtering using `LIKE` query. This operator is triggered if exact match operator is used, but value contains `%` sign as the first or last character. In order to filter records which category that start with `Food`, the following query should be used:\n\n`?category=Food%`\n<br><br>\n**Negation operator**\n\nIt is possible to get negated results of a query by prefixed the operator with `!`. Some examples:\n\n`//filter records except those with value are not 42 or 43`<br>\n`?value=!42,43`\n\n`//filter records with value not greater than 21`<br>\n`?value=!(ge)21`\n<br><br>\n**Multiple constraints for single attribute**\n\nIt is possible to apply multiple constraints by providing an array of query filters:\n\n`// filter all records which value is greater than 20.2 and less than 20.3`<br>\n`?value[]=(gt)20.2&value[]=(lt)20.3`\n\n`// filter all records which value is greater than 20.2 and less than 20.3 but not 20.2778`<br>\n`?value[]=(gt)20.2&value[]=(lt)20.3&value[]=!20.2778`<br><br>

OpenAPI spec version: 2.0
Contact: info@quantimodo.do
Generated by: https://github.com/swagger-api/swagger-codegen.git

Terms of Service: https://app.quantimo.do/terms/

=end

require "uri"

module SwaggerClient
  class ApplicationEndpointsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get all Connections
    # Get all Connections
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token Application&#39;s OAuth2 access token
    # @option opts [Integer] :connector_id The id for the connector data source for which the connection is connected
    # @option opts [String] :connect_status Indicates whether a connector is currently connected to a service for a user.
    # @option opts [String] :connect_error Error message if there is a problem with authorizing this connection.
    # @option opts [String] :update_requested_at Time at which an update was requested by a user.
    # @option opts [String] :update_status Indicates whether a connector is currently updated.
    # @option opts [String] :update_error Indicates if there was an error during the update.
    # @option opts [String] :last_successful_updated_at The time at which the connector was last successfully updated.
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_3]
    def application_connections_get(opts = {})
      data, status_code, headers = application_connections_get_with_http_info(opts)
      return data
    end

    # Get all Connections
    # Get all Connections
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token Application&#39;s OAuth2 access token
    # @option opts [Integer] :connector_id The id for the connector data source for which the connection is connected
    # @option opts [String] :connect_status Indicates whether a connector is currently connected to a service for a user.
    # @option opts [String] :connect_error Error message if there is a problem with authorizing this connection.
    # @option opts [String] :update_requested_at Time at which an update was requested by a user.
    # @option opts [String] :update_status Indicates whether a connector is currently updated.
    # @option opts [String] :update_error Indicates if there was an error during the update.
    # @option opts [String] :last_successful_updated_at The time at which the connector was last successfully updated.
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [Array<(inline_response_200_3, Fixnum, Hash)>] inline_response_200_3 data, response status code and response headers
    def application_connections_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationEndpointsApi#application_connections_get ..."
      end
      
      # resource path
      path = "/application/connections".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'connector_id'] = opts[:'connector_id'] if opts[:'connector_id']
      query_params[:'connect_status'] = opts[:'connect_status'] if opts[:'connect_status']
      query_params[:'connect_error'] = opts[:'connect_error'] if opts[:'connect_error']
      query_params[:'update_requested_at'] = opts[:'update_requested_at'] if opts[:'update_requested_at']
      query_params[:'update_status'] = opts[:'update_status'] if opts[:'update_status']
      query_params[:'update_error'] = opts[:'update_error'] if opts[:'update_error']
      query_params[:'last_successful_updated_at'] = opts[:'last_successful_updated_at'] if opts[:'last_successful_updated_at']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
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
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_3')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationEndpointsApi#application_connections_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all Credentials
    # Get all Credentials
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token Application&#39;s OAuth2 access token
    # @option opts [Integer] :connector_id The id for the connector data source from which the credential was obtained
    # @option opts [String] :attr_key Attribute name such as token, userid, username, or password
    # @option opts [String] :attr_value Encrypted value for the attribute specified
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_4]
    def application_credentials_get(opts = {})
      data, status_code, headers = application_credentials_get_with_http_info(opts)
      return data
    end

    # Get all Credentials
    # Get all Credentials
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token Application&#39;s OAuth2 access token
    # @option opts [Integer] :connector_id The id for the connector data source from which the credential was obtained
    # @option opts [String] :attr_key Attribute name such as token, userid, username, or password
    # @option opts [String] :attr_value Encrypted value for the attribute specified
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [Array<(inline_response_200_4, Fixnum, Hash)>] inline_response_200_4 data, response status code and response headers
    def application_credentials_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationEndpointsApi#application_credentials_get ..."
      end
      
      # resource path
      path = "/application/credentials".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'connector_id'] = opts[:'connector_id'] if opts[:'connector_id']
      query_params[:'attr_key'] = opts[:'attr_key'] if opts[:'attr_key']
      query_params[:'attr_value'] = opts[:'attr_value'] if opts[:'attr_value']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
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
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_4')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationEndpointsApi#application_credentials_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get measurements for all users using your application
    # Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token Application&#39;s OAuth2 access token
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
    # @return [inline_response_200_5]
    def application_measurements_get(opts = {})
      data, status_code, headers = application_measurements_get_with_http_info(opts)
      return data
    end

    # Get measurements for all users using your application
    # Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token Application&#39;s OAuth2 access token
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
    # @return [Array<(inline_response_200_5, Fixnum, Hash)>] inline_response_200_5 data, response status code and response headers
    def application_measurements_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationEndpointsApi#application_measurements_get ..."
      end
      
      # resource path
      path = "/application/measurements".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
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
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_5')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationEndpointsApi#application_measurements_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get tracking reminders
    # Get the variable id, frequency, and default value for the user tracking reminders
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :client_id The ID of the client application which last created or updated this trackingReminder
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_6]
    def application_tracking_reminders_get(opts = {})
      data, status_code, headers = application_tracking_reminders_get_with_http_info(opts)
      return data
    end

    # Get tracking reminders
    # Get the variable id, frequency, and default value for the user tracking reminders
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :client_id The ID of the client application which last created or updated this trackingReminder
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [Array<(inline_response_200_6, Fixnum, Hash)>] inline_response_200_6 data, response status code and response headers
    def application_tracking_reminders_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationEndpointsApi#application_tracking_reminders_get ..."
      end
      
      # resource path
      path = "/application/trackingReminders".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'client_id'] = opts[:'client_id'] if opts[:'client_id']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
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
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_6')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationEndpointsApi#application_tracking_reminders_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all Updates
    # Get all Updates
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token Application&#39;s OAuth2 access token
    # @option opts [Integer] :connector_id connector_id
    # @option opts [Integer] :number_of_measurements number_of_measurements
    # @option opts [BOOLEAN] :success success
    # @option opts [String] :message message
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_7]
    def application_updates_get(opts = {})
      data, status_code, headers = application_updates_get_with_http_info(opts)
      return data
    end

    # Get all Updates
    # Get all Updates
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token Application&#39;s OAuth2 access token
    # @option opts [Integer] :connector_id connector_id
    # @option opts [Integer] :number_of_measurements number_of_measurements
    # @option opts [BOOLEAN] :success success
    # @option opts [String] :message message
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [Array<(inline_response_200_7, Fixnum, Hash)>] inline_response_200_7 data, response status code and response headers
    def application_updates_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationEndpointsApi#application_updates_get ..."
      end
      
      # resource path
      path = "/application/updates".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'connector_id'] = opts[:'connector_id'] if opts[:'connector_id']
      query_params[:'number_of_measurements'] = opts[:'number_of_measurements'] if opts[:'number_of_measurements']
      query_params[:'success'] = opts[:'success'] if opts[:'success']
      query_params[:'message'] = opts[:'message'] if opts[:'message']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
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
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_7')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationEndpointsApi#application_updates_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all UserVariableRelationships
    # Get all UserVariableRelationships
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Integer] :id id
    # @option opts [String] :confidence_level Our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors
    # @option opts [Float] :confidence_score A quantitative representation of our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors
    # @option opts [String] :direction Direction is positive if higher predictor values generally precede higher outcome values. Direction is negative if higher predictor values generally precede lower outcome values.
    # @option opts [Integer] :duration_of_action Estimated number of seconds following the onset delay in which a stimulus produces a perceivable effect
    # @option opts [String] :error_message error_message
    # @option opts [Integer] :onset_delay Estimated number of seconds that pass before a stimulus produces a perceivable effect
    # @option opts [Integer] :outcome_variable_id Variable ID for the outcome variable
    # @option opts [Integer] :predictor_variable_id Variable ID for the predictor variable
    # @option opts [Integer] :predictor_unit_id ID for default unit of the predictor variable
    # @option opts [Float] :sinn_rank A value representative of the relevance of this predictor relative to other predictors of this outcome.  Usually used for relevancy sorting.
    # @option opts [String] :strength_level Can be weak, medium, or strong based on the size of the effect which the predictor appears to have on the outcome relative to other variable relationship strength scores.
    # @option opts [Float] :strength_score A value represented to the size of the effect which the predictor appears to have on the outcome.
    # @option opts [String] :vote vote
    # @option opts [Float] :value_predicting_high_outcome Value for the predictor variable (in it&#39;s default unit) which typically precedes an above average outcome value
    # @option opts [Float] :value_predicting_low_outcome Value for the predictor variable (in it&#39;s default unit) which typically precedes a below average outcome value
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_8]
    def application_user_variable_relationships_get(opts = {})
      data, status_code, headers = application_user_variable_relationships_get_with_http_info(opts)
      return data
    end

    # Get all UserVariableRelationships
    # Get all UserVariableRelationships
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Integer] :id id
    # @option opts [String] :confidence_level Our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors
    # @option opts [Float] :confidence_score A quantitative representation of our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors
    # @option opts [String] :direction Direction is positive if higher predictor values generally precede higher outcome values. Direction is negative if higher predictor values generally precede lower outcome values.
    # @option opts [Integer] :duration_of_action Estimated number of seconds following the onset delay in which a stimulus produces a perceivable effect
    # @option opts [String] :error_message error_message
    # @option opts [Integer] :onset_delay Estimated number of seconds that pass before a stimulus produces a perceivable effect
    # @option opts [Integer] :outcome_variable_id Variable ID for the outcome variable
    # @option opts [Integer] :predictor_variable_id Variable ID for the predictor variable
    # @option opts [Integer] :predictor_unit_id ID for default unit of the predictor variable
    # @option opts [Float] :sinn_rank A value representative of the relevance of this predictor relative to other predictors of this outcome.  Usually used for relevancy sorting.
    # @option opts [String] :strength_level Can be weak, medium, or strong based on the size of the effect which the predictor appears to have on the outcome relative to other variable relationship strength scores.
    # @option opts [Float] :strength_score A value represented to the size of the effect which the predictor appears to have on the outcome.
    # @option opts [String] :vote vote
    # @option opts [Float] :value_predicting_high_outcome Value for the predictor variable (in it&#39;s default unit) which typically precedes an above average outcome value
    # @option opts [Float] :value_predicting_low_outcome Value for the predictor variable (in it&#39;s default unit) which typically precedes a below average outcome value
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [Array<(inline_response_200_8, Fixnum, Hash)>] inline_response_200_8 data, response status code and response headers
    def application_user_variable_relationships_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationEndpointsApi#application_user_variable_relationships_get ..."
      end
      
      # resource path
      path = "/application/userVariableRelationships".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'id'] = opts[:'id'] if opts[:'id']
      query_params[:'confidence_level'] = opts[:'confidence_level'] if opts[:'confidence_level']
      query_params[:'confidence_score'] = opts[:'confidence_score'] if opts[:'confidence_score']
      query_params[:'direction'] = opts[:'direction'] if opts[:'direction']
      query_params[:'duration_of_action'] = opts[:'duration_of_action'] if opts[:'duration_of_action']
      query_params[:'error_message'] = opts[:'error_message'] if opts[:'error_message']
      query_params[:'onset_delay'] = opts[:'onset_delay'] if opts[:'onset_delay']
      query_params[:'outcome_variable_id'] = opts[:'outcome_variable_id'] if opts[:'outcome_variable_id']
      query_params[:'predictor_variable_id'] = opts[:'predictor_variable_id'] if opts[:'predictor_variable_id']
      query_params[:'predictor_unit_id'] = opts[:'predictor_unit_id'] if opts[:'predictor_unit_id']
      query_params[:'sinn_rank'] = opts[:'sinn_rank'] if opts[:'sinn_rank']
      query_params[:'strength_level'] = opts[:'strength_level'] if opts[:'strength_level']
      query_params[:'strength_score'] = opts[:'strength_score'] if opts[:'strength_score']
      query_params[:'vote'] = opts[:'vote'] if opts[:'vote']
      query_params[:'value_predicting_high_outcome'] = opts[:'value_predicting_high_outcome'] if opts[:'value_predicting_high_outcome']
      query_params[:'value_predicting_low_outcome'] = opts[:'value_predicting_low_outcome'] if opts[:'value_predicting_low_outcome']
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
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_8')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationEndpointsApi#application_user_variable_relationships_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all UserVariables
    # Get all UserVariables
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :client_id The ID of the client application which last created or updated this user variable
    # @option opts [Integer] :parent_id ID of the parent variable if this variable has any parent
    # @option opts [Integer] :variable_id ID of variable
    # @option opts [Integer] :default_unit_id D of unit to use for this variable
    # @option opts [Float] :minimum_allowed_value Minimum reasonable value for this variable (uses default unit)
    # @option opts [Float] :maximum_allowed_value Maximum reasonable value for this variable (uses default unit)
    # @option opts [Float] :filling_value Value for replacing null measurements
    # @option opts [Integer] :join_with The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables
    # @option opts [Integer] :onset_delay Estimated number of seconds that pass before a stimulus produces a perceivable effect
    # @option opts [Integer] :duration_of_action Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect
    # @option opts [Integer] :variable_category_id ID of variable category
    # @option opts [Integer] :updated updated
    # @option opts [Integer] :public Is variable public
    # @option opts [BOOLEAN] :cause_only A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user
    # @option opts [String] :filling_type 0 -&gt; No filling, 1 -&gt; Use filling-value
    # @option opts [Integer] :number_of_measurements Number of measurements
    # @option opts [Integer] :number_of_processed_measurements Number of processed measurements
    # @option opts [Integer] :measurements_at_last_analysis Number of measurements at last analysis
    # @option opts [Integer] :last_unit_id ID of last Unit
    # @option opts [Integer] :last_original_unit_id ID of last original Unit
    # @option opts [Integer] :last_original_value Last original value which is stored
    # @option opts [Float] :last_value Last Value
    # @option opts [Float] :last_original_value2 Last original value which is stored
    # @option opts [Integer] :last_source_id ID of last source
    # @option opts [Integer] :number_of_correlations Number of correlations for this variable
    # @option opts [String] :status status
    # @option opts [String] :error_message error_message
    # @option opts [String] :last_successful_update_time When this variable or its settings were last updated
    # @option opts [Float] :standard_deviation Standard deviation
    # @option opts [Float] :variance Variance
    # @option opts [Float] :minimum_recorded_value Minimum recorded value of this variable
    # @option opts [Float] :maximum_recorded_value Maximum recorded value of this variable
    # @option opts [Float] :mean Mean
    # @option opts [Float] :median Median
    # @option opts [Integer] :most_common_unit_id Most common Unit ID
    # @option opts [Float] :most_common_value Most common value
    # @option opts [Float] :number_of_unique_daily_values Number of unique daily values
    # @option opts [Integer] :number_of_changes Number of changes
    # @option opts [Float] :skewness Skewness
    # @option opts [Float] :kurtosis Kurtosis
    # @option opts [Float] :latitude Latitude
    # @option opts [Float] :longitude Longitude
    # @option opts [String] :location Location
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [BOOLEAN] :outcome Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables
    # @option opts [String] :sources Comma-separated list of source names to limit variables to those sources
    # @option opts [Integer] :earliest_source_time Earliest source time
    # @option opts [Integer] :latest_source_time Latest source time
    # @option opts [Integer] :earliest_measurement_time Earliest measurement time
    # @option opts [Integer] :latest_measurement_time Latest measurement time
    # @option opts [Integer] :earliest_filling_time Earliest filling time
    # @option opts [Integer] :latest_filling_time Latest filling time
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_9]
    def application_user_variables_get(opts = {})
      data, status_code, headers = application_user_variables_get_with_http_info(opts)
      return data
    end

    # Get all UserVariables
    # Get all UserVariables
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :client_id The ID of the client application which last created or updated this user variable
    # @option opts [Integer] :parent_id ID of the parent variable if this variable has any parent
    # @option opts [Integer] :variable_id ID of variable
    # @option opts [Integer] :default_unit_id D of unit to use for this variable
    # @option opts [Float] :minimum_allowed_value Minimum reasonable value for this variable (uses default unit)
    # @option opts [Float] :maximum_allowed_value Maximum reasonable value for this variable (uses default unit)
    # @option opts [Float] :filling_value Value for replacing null measurements
    # @option opts [Integer] :join_with The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables
    # @option opts [Integer] :onset_delay Estimated number of seconds that pass before a stimulus produces a perceivable effect
    # @option opts [Integer] :duration_of_action Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect
    # @option opts [Integer] :variable_category_id ID of variable category
    # @option opts [Integer] :updated updated
    # @option opts [Integer] :public Is variable public
    # @option opts [BOOLEAN] :cause_only A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user
    # @option opts [String] :filling_type 0 -&gt; No filling, 1 -&gt; Use filling-value
    # @option opts [Integer] :number_of_measurements Number of measurements
    # @option opts [Integer] :number_of_processed_measurements Number of processed measurements
    # @option opts [Integer] :measurements_at_last_analysis Number of measurements at last analysis
    # @option opts [Integer] :last_unit_id ID of last Unit
    # @option opts [Integer] :last_original_unit_id ID of last original Unit
    # @option opts [Integer] :last_original_value Last original value which is stored
    # @option opts [Float] :last_value Last Value
    # @option opts [Float] :last_original_value2 Last original value which is stored
    # @option opts [Integer] :last_source_id ID of last source
    # @option opts [Integer] :number_of_correlations Number of correlations for this variable
    # @option opts [String] :status status
    # @option opts [String] :error_message error_message
    # @option opts [String] :last_successful_update_time When this variable or its settings were last updated
    # @option opts [Float] :standard_deviation Standard deviation
    # @option opts [Float] :variance Variance
    # @option opts [Float] :minimum_recorded_value Minimum recorded value of this variable
    # @option opts [Float] :maximum_recorded_value Maximum recorded value of this variable
    # @option opts [Float] :mean Mean
    # @option opts [Float] :median Median
    # @option opts [Integer] :most_common_unit_id Most common Unit ID
    # @option opts [Float] :most_common_value Most common value
    # @option opts [Float] :number_of_unique_daily_values Number of unique daily values
    # @option opts [Integer] :number_of_changes Number of changes
    # @option opts [Float] :skewness Skewness
    # @option opts [Float] :kurtosis Kurtosis
    # @option opts [Float] :latitude Latitude
    # @option opts [Float] :longitude Longitude
    # @option opts [String] :location Location
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [BOOLEAN] :outcome Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables
    # @option opts [String] :sources Comma-separated list of source names to limit variables to those sources
    # @option opts [Integer] :earliest_source_time Earliest source time
    # @option opts [Integer] :latest_source_time Latest source time
    # @option opts [Integer] :earliest_measurement_time Earliest measurement time
    # @option opts [Integer] :latest_measurement_time Latest measurement time
    # @option opts [Integer] :earliest_filling_time Earliest filling time
    # @option opts [Integer] :latest_filling_time Latest filling time
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [Array<(inline_response_200_9, Fixnum, Hash)>] inline_response_200_9 data, response status code and response headers
    def application_user_variables_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationEndpointsApi#application_user_variables_get ..."
      end
      
      # resource path
      path = "/application/userVariables".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'client_id'] = opts[:'client_id'] if opts[:'client_id']
      query_params[:'parent_id'] = opts[:'parent_id'] if opts[:'parent_id']
      query_params[:'variable_id'] = opts[:'variable_id'] if opts[:'variable_id']
      query_params[:'default_unit_id'] = opts[:'default_unit_id'] if opts[:'default_unit_id']
      query_params[:'minimum_allowed_value'] = opts[:'minimum_allowed_value'] if opts[:'minimum_allowed_value']
      query_params[:'maximum_allowed_value'] = opts[:'maximum_allowed_value'] if opts[:'maximum_allowed_value']
      query_params[:'filling_value'] = opts[:'filling_value'] if opts[:'filling_value']
      query_params[:'join_with'] = opts[:'join_with'] if opts[:'join_with']
      query_params[:'onset_delay'] = opts[:'onset_delay'] if opts[:'onset_delay']
      query_params[:'duration_of_action'] = opts[:'duration_of_action'] if opts[:'duration_of_action']
      query_params[:'variable_category_id'] = opts[:'variable_category_id'] if opts[:'variable_category_id']
      query_params[:'updated'] = opts[:'updated'] if opts[:'updated']
      query_params[:'public'] = opts[:'public'] if opts[:'public']
      query_params[:'cause_only'] = opts[:'cause_only'] if opts[:'cause_only']
      query_params[:'filling_type'] = opts[:'filling_type'] if opts[:'filling_type']
      query_params[:'number_of_measurements'] = opts[:'number_of_measurements'] if opts[:'number_of_measurements']
      query_params[:'number_of_processed_measurements'] = opts[:'number_of_processed_measurements'] if opts[:'number_of_processed_measurements']
      query_params[:'measurements_at_last_analysis'] = opts[:'measurements_at_last_analysis'] if opts[:'measurements_at_last_analysis']
      query_params[:'last_unit_id'] = opts[:'last_unit_id'] if opts[:'last_unit_id']
      query_params[:'last_original_unit_id'] = opts[:'last_original_unit_id'] if opts[:'last_original_unit_id']
      query_params[:'last_original_value'] = opts[:'last_original_value'] if opts[:'last_original_value']
      query_params[:'last_value'] = opts[:'last_value'] if opts[:'last_value']
      query_params[:'last_original_value'] = opts[:'last_original_value2'] if opts[:'last_original_value2']
      query_params[:'last_source_id'] = opts[:'last_source_id'] if opts[:'last_source_id']
      query_params[:'number_of_correlations'] = opts[:'number_of_correlations'] if opts[:'number_of_correlations']
      query_params[:'status'] = opts[:'status'] if opts[:'status']
      query_params[:'error_message'] = opts[:'error_message'] if opts[:'error_message']
      query_params[:'last_successful_update_time'] = opts[:'last_successful_update_time'] if opts[:'last_successful_update_time']
      query_params[:'standard_deviation'] = opts[:'standard_deviation'] if opts[:'standard_deviation']
      query_params[:'variance'] = opts[:'variance'] if opts[:'variance']
      query_params[:'minimum_recorded_value'] = opts[:'minimum_recorded_value'] if opts[:'minimum_recorded_value']
      query_params[:'maximum_recorded_value'] = opts[:'maximum_recorded_value'] if opts[:'maximum_recorded_value']
      query_params[:'mean'] = opts[:'mean'] if opts[:'mean']
      query_params[:'median'] = opts[:'median'] if opts[:'median']
      query_params[:'most_common_unit_id'] = opts[:'most_common_unit_id'] if opts[:'most_common_unit_id']
      query_params[:'most_common_value'] = opts[:'most_common_value'] if opts[:'most_common_value']
      query_params[:'number_of_unique_daily_values'] = opts[:'number_of_unique_daily_values'] if opts[:'number_of_unique_daily_values']
      query_params[:'number_of_changes'] = opts[:'number_of_changes'] if opts[:'number_of_changes']
      query_params[:'skewness'] = opts[:'skewness'] if opts[:'skewness']
      query_params[:'kurtosis'] = opts[:'kurtosis'] if opts[:'kurtosis']
      query_params[:'latitude'] = opts[:'latitude'] if opts[:'latitude']
      query_params[:'longitude'] = opts[:'longitude'] if opts[:'longitude']
      query_params[:'location'] = opts[:'location'] if opts[:'location']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
      query_params[:'outcome'] = opts[:'outcome'] if opts[:'outcome']
      query_params[:'sources'] = opts[:'sources'] if opts[:'sources']
      query_params[:'earliest_source_time'] = opts[:'earliest_source_time'] if opts[:'earliest_source_time']
      query_params[:'latest_source_time'] = opts[:'latest_source_time'] if opts[:'latest_source_time']
      query_params[:'earliest_measurement_time'] = opts[:'earliest_measurement_time'] if opts[:'earliest_measurement_time']
      query_params[:'latest_measurement_time'] = opts[:'latest_measurement_time'] if opts[:'latest_measurement_time']
      query_params[:'earliest_filling_time'] = opts[:'earliest_filling_time'] if opts[:'earliest_filling_time']
      query_params[:'latest_filling_time'] = opts[:'latest_filling_time'] if opts[:'latest_filling_time']
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
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_9')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationEndpointsApi#application_user_variables_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all VariableUserSources
    # Get all VariableUserSources
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Integer] :variable_id ID of variable
    # @option opts [Integer] :timestamp Time that this measurement occurred Uses epoch minute (epoch time divided by 60)
    # @option opts [Integer] :earliest_measurement_time Earliest measurement time
    # @option opts [Integer] :latest_measurement_time Latest measurement time
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_10]
    def application_variable_user_sources_get(opts = {})
      data, status_code, headers = application_variable_user_sources_get_with_http_info(opts)
      return data
    end

    # Get all VariableUserSources
    # Get all VariableUserSources
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Integer] :variable_id ID of variable
    # @option opts [Integer] :timestamp Time that this measurement occurred Uses epoch minute (epoch time divided by 60)
    # @option opts [Integer] :earliest_measurement_time Earliest measurement time
    # @option opts [Integer] :latest_measurement_time Latest measurement time
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [Array<(inline_response_200_10, Fixnum, Hash)>] inline_response_200_10 data, response status code and response headers
    def application_variable_user_sources_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationEndpointsApi#application_variable_user_sources_get ..."
      end
      
      # resource path
      path = "/application/variableUserSources".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'variable_id'] = opts[:'variable_id'] if opts[:'variable_id']
      query_params[:'timestamp'] = opts[:'timestamp'] if opts[:'timestamp']
      query_params[:'earliest_measurement_time'] = opts[:'earliest_measurement_time'] if opts[:'earliest_measurement_time']
      query_params[:'latest_measurement_time'] = opts[:'latest_measurement_time'] if opts[:'latest_measurement_time']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
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
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_10')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationEndpointsApi#application_variable_user_sources_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all Votes
    # Get all Votes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :client_id The ID of the client application which last created or updated this vote
    # @option opts [Integer] :cause_id ID of predictor variable
    # @option opts [Integer] :effect_id ID of outcome variable
    # @option opts [Integer] :value Value of Vote. 1 is for upvote. 0 is for downvote.  Otherwise, there is no vote.
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_11]
    def application_votes_get(opts = {})
      data, status_code, headers = application_votes_get_with_http_info(opts)
      return data
    end

    # Get all Votes
    # Get all Votes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [String] :client_id The ID of the client application which last created or updated this vote
    # @option opts [Integer] :cause_id ID of predictor variable
    # @option opts [Integer] :effect_id ID of outcome variable
    # @option opts [Integer] :value Value of Vote. 1 is for upvote. 0 is for downvote.  Otherwise, there is no vote.
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [Array<(inline_response_200_11, Fixnum, Hash)>] inline_response_200_11 data, response status code and response headers
    def application_votes_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationEndpointsApi#application_votes_get ..."
      end
      
      # resource path
      path = "/application/votes".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'client_id'] = opts[:'client_id'] if opts[:'client_id']
      query_params[:'cause_id'] = opts[:'cause_id'] if opts[:'cause_id']
      query_params[:'effect_id'] = opts[:'effect_id'] if opts[:'effect_id']
      query_params[:'value'] = opts[:'value'] if opts[:'value']
      query_params[:'created_at'] = opts[:'created_at'] if opts[:'created_at']
      query_params[:'updated_at'] = opts[:'updated_at'] if opts[:'updated_at']
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
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_11')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationEndpointsApi#application_votes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
