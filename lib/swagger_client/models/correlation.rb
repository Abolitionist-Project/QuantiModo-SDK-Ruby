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

require 'date'

module SwaggerClient

  class Correlation
    # Pearson correlation coefficient between cause and effect measurements
    attr_accessor :correlation_coefficient

    # ORIGINAL variable name of the cause variable for which the user desires correlations.
    attr_accessor :cause

    # original name of the cause.
    attr_accessor :original_cause

    # ORIGINAL variable name of the effect variable for which the user desires correlations.
    attr_accessor :effect

    # effect variable original name.
    attr_accessor :original_effect

    # User estimated or default time after cause measurement before a perceivable effect is observed
    attr_accessor :onset_delay

    # Time over which the cause is expected to produce a perceivable effect following the onset delay
    attr_accessor :duration_of_action

    # Number of points that went into the correlation calculation
    attr_accessor :number_of_pairs

    # Magnitude of the effects of a cause indicating whether it's practically meaningful.
    attr_accessor :effect_size

    # A function of the effect size and sample size
    attr_accessor :statistical_significance

    # Time at which correlation was calculated
    attr_accessor :timestamp

    # Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation.
    attr_accessor :reverse_correlation

    # 
    attr_accessor :causality_factor

    # Variable category of the cause variable.
    attr_accessor :cause_category

    # Variable category of the effect variable.
    attr_accessor :effect_category

    # cause value that predicts an above average effect value (in default unit for cause variable)
    attr_accessor :value_predicting_high_outcome

    # cause value that predicts a below average effect value (in default unit for cause variable)
    attr_accessor :value_predicting_low_outcome

    # Optimal Pearson Product
    attr_accessor :optimal_pearson_product

    # Average Vote
    attr_accessor :average_vote

    # User Vote
    attr_accessor :user_vote

    # Unit of the predictor variable
    attr_accessor :cause_unit

    # Unit Id of the predictor variable
    attr_accessor :cause_unit_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'correlation_coefficient' => :'correlationCoefficient',
        :'cause' => :'cause',
        :'original_cause' => :'originalCause',
        :'effect' => :'effect',
        :'original_effect' => :'originalEffect',
        :'onset_delay' => :'onsetDelay',
        :'duration_of_action' => :'durationOfAction',
        :'number_of_pairs' => :'numberOfPairs',
        :'effect_size' => :'effectSize',
        :'statistical_significance' => :'statisticalSignificance',
        :'timestamp' => :'timestamp',
        :'reverse_correlation' => :'reverseCorrelation',
        :'causality_factor' => :'causalityFactor',
        :'cause_category' => :'causeCategory',
        :'effect_category' => :'effectCategory',
        :'value_predicting_high_outcome' => :'valuePredictingHighOutcome',
        :'value_predicting_low_outcome' => :'valuePredictingLowOutcome',
        :'optimal_pearson_product' => :'optimalPearsonProduct',
        :'average_vote' => :'averageVote',
        :'user_vote' => :'userVote',
        :'cause_unit' => :'causeUnit',
        :'cause_unit_id' => :'causeUnitId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'correlation_coefficient' => :'Float',
        :'cause' => :'String',
        :'original_cause' => :'String',
        :'effect' => :'String',
        :'original_effect' => :'String',
        :'onset_delay' => :'Float',
        :'duration_of_action' => :'Float',
        :'number_of_pairs' => :'Float',
        :'effect_size' => :'String',
        :'statistical_significance' => :'String',
        :'timestamp' => :'Float',
        :'reverse_correlation' => :'Float',
        :'causality_factor' => :'Float',
        :'cause_category' => :'String',
        :'effect_category' => :'String',
        :'value_predicting_high_outcome' => :'Float',
        :'value_predicting_low_outcome' => :'Float',
        :'optimal_pearson_product' => :'Float',
        :'average_vote' => :'Float',
        :'user_vote' => :'Float',
        :'cause_unit' => :'String',
        :'cause_unit_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'correlationCoefficient')
        self.correlation_coefficient = attributes[:'correlationCoefficient']
      end

      if attributes.has_key?(:'cause')
        self.cause = attributes[:'cause']
      end

      if attributes.has_key?(:'originalCause')
        self.original_cause = attributes[:'originalCause']
      end

      if attributes.has_key?(:'effect')
        self.effect = attributes[:'effect']
      end

      if attributes.has_key?(:'originalEffect')
        self.original_effect = attributes[:'originalEffect']
      end

      if attributes.has_key?(:'onsetDelay')
        self.onset_delay = attributes[:'onsetDelay']
      end

      if attributes.has_key?(:'durationOfAction')
        self.duration_of_action = attributes[:'durationOfAction']
      end

      if attributes.has_key?(:'numberOfPairs')
        self.number_of_pairs = attributes[:'numberOfPairs']
      end

      if attributes.has_key?(:'effectSize')
        self.effect_size = attributes[:'effectSize']
      end

      if attributes.has_key?(:'statisticalSignificance')
        self.statistical_significance = attributes[:'statisticalSignificance']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'reverseCorrelation')
        self.reverse_correlation = attributes[:'reverseCorrelation']
      end

      if attributes.has_key?(:'causalityFactor')
        self.causality_factor = attributes[:'causalityFactor']
      end

      if attributes.has_key?(:'causeCategory')
        self.cause_category = attributes[:'causeCategory']
      end

      if attributes.has_key?(:'effectCategory')
        self.effect_category = attributes[:'effectCategory']
      end

      if attributes.has_key?(:'valuePredictingHighOutcome')
        self.value_predicting_high_outcome = attributes[:'valuePredictingHighOutcome']
      end

      if attributes.has_key?(:'valuePredictingLowOutcome')
        self.value_predicting_low_outcome = attributes[:'valuePredictingLowOutcome']
      end

      if attributes.has_key?(:'optimalPearsonProduct')
        self.optimal_pearson_product = attributes[:'optimalPearsonProduct']
      end

      if attributes.has_key?(:'averageVote')
        self.average_vote = attributes[:'averageVote']
      end

      if attributes.has_key?(:'userVote')
        self.user_vote = attributes[:'userVote']
      end

      if attributes.has_key?(:'causeUnit')
        self.cause_unit = attributes[:'causeUnit']
      end

      if attributes.has_key?(:'causeUnitId')
        self.cause_unit_id = attributes[:'causeUnitId']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @correlation_coefficient.nil?
      return false if @cause.nil?
      return false if @effect.nil?
      return false if @onset_delay.nil?
      return false if @duration_of_action.nil?
      return false if @number_of_pairs.nil?
      return false if @timestamp.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          correlation_coefficient == o.correlation_coefficient &&
          cause == o.cause &&
          original_cause == o.original_cause &&
          effect == o.effect &&
          original_effect == o.original_effect &&
          onset_delay == o.onset_delay &&
          duration_of_action == o.duration_of_action &&
          number_of_pairs == o.number_of_pairs &&
          effect_size == o.effect_size &&
          statistical_significance == o.statistical_significance &&
          timestamp == o.timestamp &&
          reverse_correlation == o.reverse_correlation &&
          causality_factor == o.causality_factor &&
          cause_category == o.cause_category &&
          effect_category == o.effect_category &&
          value_predicting_high_outcome == o.value_predicting_high_outcome &&
          value_predicting_low_outcome == o.value_predicting_low_outcome &&
          optimal_pearson_product == o.optimal_pearson_product &&
          average_vote == o.average_vote &&
          user_vote == o.user_vote &&
          cause_unit == o.cause_unit &&
          cause_unit_id == o.cause_unit_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [correlation_coefficient, cause, original_cause, effect, original_effect, onset_delay, duration_of_action, number_of_pairs, effect_size, statistical_significance, timestamp, reverse_correlation, causality_factor, cause_category, effect_category, value_predicting_high_outcome, value_predicting_low_outcome, optimal_pearson_product, average_vote, user_vote, cause_unit, cause_unit_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
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
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
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
