=begin
Quantimodo API

Welcome to QuantiModo API! QuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications. [Learn about QuantiModo](https://quantimo.do) or contact us at <api@quantimo.do>.\n\nBefore you get started, you will need to:\n* Sign in/Sign up, and add some data at [https://quantipress.quantimo.do/import-data/](https://quantipress.quantimo.do/import-data/) to try out the API for yourself\n* As long as you're signed in, it will use your browser's cookie for authentication.  However, client applications must use OAuth2 tokens to access the API.\n\n## Social Authentication flow with JWT Token\nHere is the flow for how social authentication works with JWT Token:\n\nSupported Providers:\n * facebook\n * google\n * twitter\n\n1.**Client:** Need to open popup with social auth url (`https://app/quantimo.do/api/v2/auth/social/login?provider={provider}&redirectUrl={url}`) of server with `provider` and `redirectUrl` (Url should be registered with our social apps. Facebook and Twitter are fine with any redirect url with the same domain base url but Google needs exact redirect url)\n\n2.**Server:** Server will redirect user to that provider to get access\n\n3.**Client:** After successful or failed authentication, it will be redirected to given `redirectUrl` with code or error\n\n4.**Client:** Client need to get that code and need to send Ajax request to server on `https://app.quantimo.do/api/v2/auth/social/authorizeCode?provider={provider}&code={authorizationCode}`\n\n5.**Server:** Server will authorize that code from social connection and will authenticate user and will retrieve user info\n\n6.**Server:** Server will try to find existing user by unique identity. If user exist then it will do a login for that or it will create new user and will do login\n\n7.**Server:** Once user is found/created, it will return a JWT token for that user in response\n\n\n## Authentication via access token for Native App\nIf you are using native authentication via Facebook or Google SDKs then you should use the following flow:\n\n1.**Client:** Do a native authentication via Native Mobile app and get an access token\n\n2.**Client:** Send Ajax request with provider name and access token on `https://app.quantimo.do/api/v2/auth/social/authorizeToken?provider={provider}&accessToken={accessToken}&refreshToken={refreshToken}` (`refreshToken` is optional)\n\n3.**Server:** Server will try to get user info and will find existing user by unique identity. If user exist then it will do a login for that or it will create new user and will do login\n\n4.**Server:** Once user is found/created, it will return a JWT token for that user in response\n\n5.**Client:** After getting the JWT token to get a QM access token follow these steps and include your JWT token in them as a header (Authorization: Bearer **{yourJWThere}**) or as a url parameter (https://app.quantimo.do/api/v2/oauth/authorize?token={yourJWThere}).\n\n## Oauth2 Authentication(QM Access Token)\n* First step is creating an application on [https://admin.quantimo.do](https://admin.quantimo.do) so you can have client_id and client_secret for testing out/using our api\n* You can implement OAuth2 authentication to your application using our **OAuth2** endpoints.\n\n### Request Authorization Code\nBasically you need to redirect users to `/api/v2/oauth/authorize` endpoint to get an authorization code with following parameters:\n* `client_id` This is the unique ID that QuantiModo uses to identify your application.\n* `scope` Scopes include basic, readmeasurements, and writemeasurements. The `basic` scope allows you to read user info (displayname, email, etc). The `readmeasurements` scope allows one to read a user's data. The `writemeasurements` scope allows you to write user data. Separate multiple scopes by a space.\n* `redirect_uri` The redirect URI is the URL within your client application that will receive the OAuth2 credentials.\n* `state` An opaque string that is round-tripped in the protocol; that is to say, it is returned as a URI parameter in the Basic flow, and in the URI.\n* `response_type` If the value is code, launches a Basic flow, requiring a POST to the token endpoint to obtain the tokens. If the value is token id_token or id_token token, launches an Implicit flow, requiring the use of Javascript at the redirect URI to retrieve tokens from the URI #fragment.\n\n### Request Access Token\nAfter user approves your access to the given scope, you'll recevive an authorization code to request an access token. This time make a `POST` request to `/api/v2/oauth/access_token` with parameters including:\n* `grant_type` Can be `authorization_code` or `refresh_token` since we are getting the `access_token` for the first time we don't have a `refresh_token` so this must be `authorization_code`.\n* `client_id` The client id you used to receive an `authorization_code`.\n* `client_secret` Your client secret which you received with the client id.\n* `code` Authorization code you received with the previous request.\n* `redirect_uri` Your application's redirect url.\n\n### Refreshing Access Token\nAccess tokens expire at some point, to continue using our api you need to refresh them with `refresh_token` you received along with the `access_token`. To do this make a `POST` request to `/api/v2/oauth/access_token` with correct parameters, which are:\n* `grant_type` This time grant type must be `refresh_token` since we have it.\n* `client_id` Your application's client id.\n* `client_secret` Your application's client secret.\n* `refresh_token` The refresh token you received with the `access_token`.\n\nEvery request you make to this endpoint will give you a new refresh token and make the old one expired. So you can keep getting new access tokens with new refresh tokens.\n### Using Access Token\nCurrently we support 2 ways for this, you can't use both at the same time.\n* Adding access token to the request header as `Authorization: Bearer {access_token}`\n* Adding to the url as a query parameter `?access_token={access_token}`\n\nYou can read more about OAuth2 from [here](http://oauth.net/2/)\n\n## Application Endpoints\nThese endpoints give you access to all authorized users' data for that application.\n### Getting Application Token\nMake a `POST` request to `/api/v2/oauth/access_token`\n * `grant_type` Must be `client_credentials`.\n * `client_id` Your application's client_id.\n * `client_secret` Your application's client_secret.\n * `redirect_uri` Your application's redirect url.\n\n## Example Queries\n### Query Options\nThe standard query options for QuantiModo API are as described in the table below. These are the available query options in QuantiModo API:\n<table>\n    <thead>\n        <tr>\n            <th>Parameter</th>\n            <th>Description</th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr>\n            <td>limit</td>\n            <td>The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.</td>\n        </tr>\n        <tr>\n            <td>offset</td>\n            <td>Suppose you wanted to show results 11-20. You'd set the offset to 10 and the limit to 10.</td>\n        </tr>\n        <tr>\n            <td>sort</td>\n            <td>Sort by given field. If the field is prefixed with '-', it will sort in descending order.</td>\n        </tr>\n    </tbody>\n</table>\n\n### Pagination Conventions\nSince the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters,\n\n`/v2/variables?limit=20&offset=60`\n\nGenerally, you'll be retrieving new or updated user data. To avoid unnecessary API calls, you'll want to store your last refresh time locally.  Initially, it should be set to 0. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append\n\n`?lastUpdated=(ge)&quot2013-01-D01T01:01:01&quot`\n\nto your request.\n\nAlso for better pagination, you can get link to the records of first, last, next and previous page from response headers:\n* `Total-Count` - Total number of results for given query\n* `Link-First` - Link to get first page records\n* `Link-Last` - Link to get last page records\n* `Link-Prev` - Link to get previous records set\n* `Link-Next` - Link to get next records set\n\nRemember, response header will be only sent when the record set is available. e.g. You will not get a ```Link-Last``` & ```Link-Next``` when you query for the last page.\n\n### Filter operators support\nAPI supports the following operators with filter parameters:\n<br>\n**Comparison operators**\n\nComparison operators allow you to limit results to those greater than, less than, or equal to a specified value for a specified attribute. These operators can be used with strings, numbers, and dates. The following comparison operators are available:\n* `gt` for `greater than` comparison\n* `ge` for `greater than or equal` comparison\n* `lt` for `less than` comparison\n* `le` for `less than or equal` comparison\n\nThey are included in queries using the following format:\n\n`(<operator>)<value>`\n\nFor example, in order to filter value which is greater than 21, the following query parameter should be used:\n\n`?value=(gt)21`\n<br><br>\n**Equals/In Operators**\n\nIt also allows filtering by the exact value of an attribute or by a set of values, depending on the type of value passed as a query parameter. If the value contains commas, the parameter is split on commas and used as array input for `IN` filtering, otherwise the exact match is applied. In order to only show records which have the value 42, the following query should be used:\n\n`?value=42`\n\nIn order to filter records which have value 42 or 43, the following query should be used:\n\n`?value=42,43`\n<br><br>\n**Like operators**\n\nLike operators allow filtering using `LIKE` query. This operator is triggered if exact match operator is used, but value contains `%` sign as the first or last character. In order to filter records which category that start with `Food`, the following query should be used:\n\n`?category=Food%`\n<br><br>\n**Negation operator**\n\nIt is possible to get negated results of a query by prefixed the operator with `!`. Some examples:\n\n`//filter records except those with value are not 42 or 43`<br>\n`?value=!42,43`\n\n`//filter records with value not greater than 21`<br>\n`?value=!(ge)21`\n<br><br>\n**Multiple constraints for single attribute**\n\nIt is possible to apply multiple constraints by providing an array of query filters:\n\n`// filter all records which value is greater than 20.2 and less than 20.3`<br>\n`?value[]=(gt)20.2&value[]=(lt)20.3`\n\n`// filter all records which value is greater than 20.2 and less than 20.3 but not 20.2778`<br>\n`?value[]=(gt)20.2&value[]=(lt)20.3&value[]=!20.2778`<br><br>

OpenAPI spec version: 2.0
Contact: info@quantimodo.do
Generated by: https://github.com/swagger-api/swagger-codegen.git

Terms of Service: https://app.quantimo.do/terms/

=end

require 'date'

module SwaggerClient
  class Correlation
    # id
    attr_accessor :id

    # Time at which correlation was calculated
    attr_accessor :timestamp

    # ID of user that owns this correlation
    attr_accessor :user_id

    # Pearson correlation coefficient between cause and effect measurements
    attr_accessor :correlation

    # variable ID of the cause variable for which the user desires correlations
    attr_accessor :cause_id

    # variable ID of the effect variable for which the user desires correlations
    attr_accessor :effect_id

    # User estimated or default time after cause measurement before a perceivable effect is observed
    attr_accessor :onset_delay

    # Time over which the cause is expected to produce a perceivable effect following the onset delay
    attr_accessor :duration_of_action

    # Number of points that went into the correlation calculation
    attr_accessor :number_of_pairs

    # cause value that predicts an above average effect value (in default unit for cause variable)
    attr_accessor :value_predicting_high_outcome

    # cause value that predicts a below average effect value (in default unit for cause variable)
    attr_accessor :value_predicting_low_outcome

    # Optimal Pearson Product
    attr_accessor :optimal_pearson_product

    # Vote
    attr_accessor :vote

    # A function of the effect size and sample size
    attr_accessor :statistical_significance

    # Unit of the predictor variable
    attr_accessor :cause_unit

    # Unit ID of the predictor variable
    attr_accessor :cause_unit_id

    # Cause changes
    attr_accessor :cause_changes

    # Effect changes
    attr_accessor :effect_changes

    # QM Score
    attr_accessor :qm_score

    # error
    attr_accessor :error

    # When the record was first created. Use ISO 8601 datetime format
    attr_accessor :created_at

    # When the record in the database was last updated. Use ISO 8601 datetime format
    attr_accessor :updated_at

    # Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation
    attr_accessor :reverse_pearson_correlation_coefficient

    # Predictive Pearson Correlation Coefficient
    attr_accessor :predictive_pearson_correlation_coefficient

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'id' => :'id',
        
        :'timestamp' => :'timestamp',
        
        :'user_id' => :'user_id',
        
        :'correlation' => :'correlation',
        
        :'cause_id' => :'cause_id',
        
        :'effect_id' => :'effect_id',
        
        :'onset_delay' => :'onset_delay',
        
        :'duration_of_action' => :'duration_of_action',
        
        :'number_of_pairs' => :'number_of_pairs',
        
        :'value_predicting_high_outcome' => :'value_predicting_high_outcome',
        
        :'value_predicting_low_outcome' => :'value_predicting_low_outcome',
        
        :'optimal_pearson_product' => :'optimal_pearson_product',
        
        :'vote' => :'vote',
        
        :'statistical_significance' => :'statistical_significance',
        
        :'cause_unit' => :'cause_unit',
        
        :'cause_unit_id' => :'cause_unit_id',
        
        :'cause_changes' => :'cause_changes',
        
        :'effect_changes' => :'effect_changes',
        
        :'qm_score' => :'qm_score',
        
        :'error' => :'error',
        
        :'created_at' => :'created_at',
        
        :'updated_at' => :'updated_at',
        
        :'reverse_pearson_correlation_coefficient' => :'reverse_pearson_correlation_coefficient',
        
        :'predictive_pearson_correlation_coefficient' => :'predictive_pearson_correlation_coefficient'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'timestamp' => :'Integer',
        :'user_id' => :'Integer',
        :'correlation' => :'Float',
        :'cause_id' => :'Integer',
        :'effect_id' => :'Integer',
        :'onset_delay' => :'Integer',
        :'duration_of_action' => :'Integer',
        :'number_of_pairs' => :'Integer',
        :'value_predicting_high_outcome' => :'Float',
        :'value_predicting_low_outcome' => :'Float',
        :'optimal_pearson_product' => :'Float',
        :'vote' => :'Float',
        :'statistical_significance' => :'Float',
        :'cause_unit' => :'String',
        :'cause_unit_id' => :'Integer',
        :'cause_changes' => :'Integer',
        :'effect_changes' => :'Integer',
        :'qm_score' => :'Float',
        :'error' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'reverse_pearson_correlation_coefficient' => :'Float',
        :'predictive_pearson_correlation_coefficient' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'timestamp']
        self.timestamp = attributes[:'timestamp']
      end
      
      if attributes[:'user_id']
        self.user_id = attributes[:'user_id']
      end
      
      if attributes[:'correlation']
        self.correlation = attributes[:'correlation']
      end
      
      if attributes[:'cause_id']
        self.cause_id = attributes[:'cause_id']
      end
      
      if attributes[:'effect_id']
        self.effect_id = attributes[:'effect_id']
      end
      
      if attributes[:'onset_delay']
        self.onset_delay = attributes[:'onset_delay']
      end
      
      if attributes[:'duration_of_action']
        self.duration_of_action = attributes[:'duration_of_action']
      end
      
      if attributes[:'number_of_pairs']
        self.number_of_pairs = attributes[:'number_of_pairs']
      end
      
      if attributes[:'value_predicting_high_outcome']
        self.value_predicting_high_outcome = attributes[:'value_predicting_high_outcome']
      end
      
      if attributes[:'value_predicting_low_outcome']
        self.value_predicting_low_outcome = attributes[:'value_predicting_low_outcome']
      end
      
      if attributes[:'optimal_pearson_product']
        self.optimal_pearson_product = attributes[:'optimal_pearson_product']
      end
      
      if attributes[:'vote']
        self.vote = attributes[:'vote']
      end
      
      if attributes[:'statistical_significance']
        self.statistical_significance = attributes[:'statistical_significance']
      end
      
      if attributes[:'cause_unit']
        self.cause_unit = attributes[:'cause_unit']
      end
      
      if attributes[:'cause_unit_id']
        self.cause_unit_id = attributes[:'cause_unit_id']
      end
      
      if attributes[:'cause_changes']
        self.cause_changes = attributes[:'cause_changes']
      end
      
      if attributes[:'effect_changes']
        self.effect_changes = attributes[:'effect_changes']
      end
      
      if attributes[:'qm_score']
        self.qm_score = attributes[:'qm_score']
      end
      
      if attributes[:'error']
        self.error = attributes[:'error']
      end
      
      if attributes[:'created_at']
        self.created_at = attributes[:'created_at']
      end
      
      if attributes[:'updated_at']
        self.updated_at = attributes[:'updated_at']
      end
      
      if attributes[:'reverse_pearson_correlation_coefficient']
        self.reverse_pearson_correlation_coefficient = attributes[:'reverse_pearson_correlation_coefficient']
      end
      
      if attributes[:'predictive_pearson_correlation_coefficient']
        self.predictive_pearson_correlation_coefficient = attributes[:'predictive_pearson_correlation_coefficient']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          timestamp == o.timestamp &&
          user_id == o.user_id &&
          correlation == o.correlation &&
          cause_id == o.cause_id &&
          effect_id == o.effect_id &&
          onset_delay == o.onset_delay &&
          duration_of_action == o.duration_of_action &&
          number_of_pairs == o.number_of_pairs &&
          value_predicting_high_outcome == o.value_predicting_high_outcome &&
          value_predicting_low_outcome == o.value_predicting_low_outcome &&
          optimal_pearson_product == o.optimal_pearson_product &&
          vote == o.vote &&
          statistical_significance == o.statistical_significance &&
          cause_unit == o.cause_unit &&
          cause_unit_id == o.cause_unit_id &&
          cause_changes == o.cause_changes &&
          effect_changes == o.effect_changes &&
          qm_score == o.qm_score &&
          error == o.error &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          reverse_pearson_correlation_coefficient == o.reverse_pearson_correlation_coefficient &&
          predictive_pearson_correlation_coefficient == o.predictive_pearson_correlation_coefficient
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [id, timestamp, user_id, correlation, cause_id, effect_id, onset_delay, duration_of_action, number_of_pairs, value_predicting_high_outcome, value_predicting_low_outcome, optimal_pearson_product, vote, statistical_significance, cause_unit, cause_unit_id, cause_changes, effect_changes, qm_score, error, created_at, updated_at, reverse_pearson_correlation_coefficient, predictive_pearson_correlation_coefficient].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = SwaggerClient.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
