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
  class CredentialApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get all Credentials
    # Get all Credentials
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Integer] :user_id ID of user that owns this credential
    # @option opts [Integer] :connector_id The id for the connector data source from which the credential was obtained
    # @option opts [String] :attr_key Attribute name such as token, userid, username, or password
    # @option opts [String] :attr_value Encrypted value for the attribute specified
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [inline_response_200_4]
    def credentials_get(opts = {})
      data, status_code, headers = credentials_get_with_http_info(opts)
      return data
    end

    # Get all Credentials
    # Get all Credentials
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Integer] :user_id ID of user that owns this credential
    # @option opts [Integer] :connector_id The id for the connector data source from which the credential was obtained
    # @option opts [String] :attr_key Attribute name such as token, userid, username, or password
    # @option opts [String] :attr_value Encrypted value for the attribute specified
    # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format
    # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format
    # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
    # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
    # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
    # @return [Array<(inline_response_200_4, Fixnum, Hash)>] inline_response_200_4 data, response status code and response headers
    def credentials_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CredentialApi#credentials_get ..."
      end
      
      # resource path
      path = "/credentials".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'access_token'] = opts[:'access_token'] if opts[:'access_token']
      query_params[:'user_id'] = opts[:'user_id'] if opts[:'user_id']
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
      
      auth_names = ['quantimodo_oauth2']
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_4')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialApi#credentials_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Store Credential
    # Store Credential
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Credential] :body Credential that should be stored
    # @return [inline_response_200_19]
    def credentials_post(opts = {})
      data, status_code, headers = credentials_post_with_http_info(opts)
      return data
    end

    # Store Credential
    # Store Credential
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Credential] :body Credential that should be stored
    # @return [Array<(inline_response_200_19, Fixnum, Hash)>] inline_response_200_19 data, response status code and response headers
    def credentials_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CredentialApi#credentials_post ..."
      end
      
      # resource path
      path = "/credentials".sub('{format}','json')

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
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_19')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialApi#credentials_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Credential
    # Get Credential
    # @param id connector id
    # @param attr_key attrKey
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_19]
    def credentials_id_get(id, attr_key, opts = {})
      data, status_code, headers = credentials_id_get_with_http_info(id, attr_key, opts)
      return data
    end

    # Get Credential
    # Get Credential
    # @param id connector id
    # @param attr_key attrKey
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(inline_response_200_19, Fixnum, Hash)>] inline_response_200_19 data, response status code and response headers
    def credentials_id_get_with_http_info(id, attr_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CredentialApi#credentials_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling credentials_id_get" if id.nil?
      
      # verify the required parameter 'attr_key' is set
      fail "Missing the required parameter 'attr_key' when calling credentials_id_get" if attr_key.nil?
      
      # resource path
      path = "/credentials/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'attrKey'] = attr_key
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
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_19')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialApi#credentials_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Credential
    # Update Credential
    # @param id connector id
    # @param attr_key attrKey
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Credential] :body Credential that should be updated
    # @return [inline_response_200_2]
    def credentials_id_put(id, attr_key, opts = {})
      data, status_code, headers = credentials_id_put_with_http_info(id, attr_key, opts)
      return data
    end

    # Update Credential
    # Update Credential
    # @param id connector id
    # @param attr_key attrKey
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @option opts [Credential] :body Credential that should be updated
    # @return [Array<(inline_response_200_2, Fixnum, Hash)>] inline_response_200_2 data, response status code and response headers
    def credentials_id_put_with_http_info(id, attr_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CredentialApi#credentials_id_put ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling credentials_id_put" if id.nil?
      
      # verify the required parameter 'attr_key' is set
      fail "Missing the required parameter 'attr_key' when calling credentials_id_put" if attr_key.nil?
      
      # resource path
      path = "/credentials/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'attrKey'] = attr_key
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
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_2')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialApi#credentials_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Credential
    # Delete Credential
    # @param id connector id
    # @param attr_key attrKey
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [inline_response_200_2]
    def credentials_id_delete(id, attr_key, opts = {})
      data, status_code, headers = credentials_id_delete_with_http_info(id, attr_key, opts)
      return data
    end

    # Delete Credential
    # Delete Credential
    # @param id connector id
    # @param attr_key attrKey
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_token User&#39;s OAuth2 access token
    # @return [Array<(inline_response_200_2, Fixnum, Hash)>] inline_response_200_2 data, response status code and response headers
    def credentials_id_delete_with_http_info(id, attr_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CredentialApi#credentials_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling credentials_id_delete" if id.nil?
      
      # verify the required parameter 'attr_key' is set
      fail "Missing the required parameter 'attr_key' when calling credentials_id_delete" if attr_key.nil?
      
      # resource path
      path = "/credentials/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'attrKey'] = attr_key
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
      data, status_code, headers = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'inline_response_200_2')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialApi#credentials_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
