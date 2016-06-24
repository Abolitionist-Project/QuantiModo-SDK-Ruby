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

  class Variable
    # Variable ID
    attr_accessor :id

    # User-defined variable display name.
    attr_accessor :name

    # Name used when the variable was originally created in the `variables` table.
    attr_accessor :original_name

    # Variable category like Mood, Sleep, Physical Activity, Treatment, Symptom, etc.
    attr_accessor :category

    # Abbreviated name of the default unit for the variable
    attr_accessor :abbreviated_unit_name

    # Id of the default unit for the variable
    attr_accessor :abbreviated_unit_id

    # Comma-separated list of source names to limit variables to those sources
    attr_accessor :sources

    # Minimum reasonable value for this variable (uses default unit)
    attr_accessor :minimum_value

    # Maximum reasonable value for this variable (uses default unit)
    attr_accessor :maximum_value

    # Way to aggregate measurements over time. Options are \"MEAN\" or \"SUM\".  SUM should be used for things like minutes of exercise.  If you use MEAN for exercise, then a person might exercise more minutes in one day but add separate measurements that were smaller.  So when we are doing correlational analysis, we would think that the person exercised less that day even though they exercised more.  Conversely, we must use MEAN for things such as ratings which cannot be SUMMED.
    attr_accessor :combination_operation

    # Value for replacing null measurements
    attr_accessor :filling_value

    # The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables.
    attr_accessor :join_with

    # Array of Variables that are joined with this Variable
    attr_accessor :joined_variables

    # Id of the parent variable if this variable has any parent
    attr_accessor :parent

    # Array of Variables that are sub variables to this Variable
    attr_accessor :sub_variables

    # How long it takes for a measurement in this variable to take effect
    attr_accessor :onset_delay

    # How long the effect of a measurement in this variable lasts
    attr_accessor :duration_of_action

    # Earliest measurement time
    attr_accessor :earliest_measurement_time

    # Latest measurement time
    attr_accessor :latest_measurement_time

    # When this variable or its settings were last updated
    attr_accessor :updated

    # A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user.
    attr_accessor :cause_only

    # Number of correlations
    attr_accessor :number_of_correlations

    # Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables.
    attr_accessor :outcome

    # The number of measurements that a given user had for this variable the last time a correlation calculation was performed. Generally correlation values are only updated once the current number of measurements for a variable is more than 10% greater than the measurementsAtLastAnalysis.  This avoids a computationally-demanding recalculation when there's not enough new data to make a significant difference in the correlation.
    attr_accessor :measurements_at_last_analysis

    # Number of measurements
    attr_accessor :number_of_measurements

    # Last unit
    attr_accessor :last_unit

    # Last value
    attr_accessor :last_value

    # Most common value
    attr_accessor :most_common_value

    # Most common unit
    attr_accessor :most_common_unit

    # Last source
    attr_accessor :last_source

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'original_name' => :'originalName',
        :'category' => :'category',
        :'abbreviated_unit_name' => :'abbreviatedUnitName',
        :'abbreviated_unit_id' => :'abbreviatedUnitId',
        :'sources' => :'sources',
        :'minimum_value' => :'minimumValue',
        :'maximum_value' => :'maximumValue',
        :'combination_operation' => :'combinationOperation',
        :'filling_value' => :'fillingValue',
        :'join_with' => :'joinWith',
        :'joined_variables' => :'joinedVariables',
        :'parent' => :'parent',
        :'sub_variables' => :'subVariables',
        :'onset_delay' => :'onsetDelay',
        :'duration_of_action' => :'durationOfAction',
        :'earliest_measurement_time' => :'earliestMeasurementTime',
        :'latest_measurement_time' => :'latestMeasurementTime',
        :'updated' => :'updated',
        :'cause_only' => :'causeOnly',
        :'number_of_correlations' => :'numberOfCorrelations',
        :'outcome' => :'outcome',
        :'measurements_at_last_analysis' => :'measurementsAtLastAnalysis',
        :'number_of_measurements' => :'numberOfMeasurements',
        :'last_unit' => :'lastUnit',
        :'last_value' => :'lastValue',
        :'most_common_value' => :'mostCommonValue',
        :'most_common_unit' => :'mostCommonUnit',
        :'last_source' => :'lastSource'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'original_name' => :'String',
        :'category' => :'String',
        :'abbreviated_unit_name' => :'String',
        :'abbreviated_unit_id' => :'Integer',
        :'sources' => :'String',
        :'minimum_value' => :'Float',
        :'maximum_value' => :'Float',
        :'combination_operation' => :'String',
        :'filling_value' => :'Float',
        :'join_with' => :'String',
        :'joined_variables' => :'Array<Variable>',
        :'parent' => :'Integer',
        :'sub_variables' => :'Array<Variable>',
        :'onset_delay' => :'Integer',
        :'duration_of_action' => :'Integer',
        :'earliest_measurement_time' => :'Integer',
        :'latest_measurement_time' => :'Integer',
        :'updated' => :'Integer',
        :'cause_only' => :'Integer',
        :'number_of_correlations' => :'Integer',
        :'outcome' => :'Integer',
        :'measurements_at_last_analysis' => :'Integer',
        :'number_of_measurements' => :'Integer',
        :'last_unit' => :'String',
        :'last_value' => :'Integer',
        :'most_common_value' => :'Integer',
        :'most_common_unit' => :'String',
        :'last_source' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'originalName')
        self.original_name = attributes[:'originalName']
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'abbreviatedUnitName')
        self.abbreviated_unit_name = attributes[:'abbreviatedUnitName']
      end

      if attributes.has_key?(:'abbreviatedUnitId')
        self.abbreviated_unit_id = attributes[:'abbreviatedUnitId']
      end

      if attributes.has_key?(:'sources')
        self.sources = attributes[:'sources']
      end

      if attributes.has_key?(:'minimumValue')
        self.minimum_value = attributes[:'minimumValue']
      end

      if attributes.has_key?(:'maximumValue')
        self.maximum_value = attributes[:'maximumValue']
      end

      if attributes.has_key?(:'combinationOperation')
        self.combination_operation = attributes[:'combinationOperation']
      end

      if attributes.has_key?(:'fillingValue')
        self.filling_value = attributes[:'fillingValue']
      end

      if attributes.has_key?(:'joinWith')
        self.join_with = attributes[:'joinWith']
      end

      if attributes.has_key?(:'joinedVariables')
        if (value = attributes[:'joinedVariables']).is_a?(Array)
          self.joined_variables = value
        end
      end

      if attributes.has_key?(:'parent')
        self.parent = attributes[:'parent']
      end

      if attributes.has_key?(:'subVariables')
        if (value = attributes[:'subVariables']).is_a?(Array)
          self.sub_variables = value
        end
      end

      if attributes.has_key?(:'onsetDelay')
        self.onset_delay = attributes[:'onsetDelay']
      end

      if attributes.has_key?(:'durationOfAction')
        self.duration_of_action = attributes[:'durationOfAction']
      end

      if attributes.has_key?(:'earliestMeasurementTime')
        self.earliest_measurement_time = attributes[:'earliestMeasurementTime']
      end

      if attributes.has_key?(:'latestMeasurementTime')
        self.latest_measurement_time = attributes[:'latestMeasurementTime']
      end

      if attributes.has_key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.has_key?(:'causeOnly')
        self.cause_only = attributes[:'causeOnly']
      end

      if attributes.has_key?(:'numberOfCorrelations')
        self.number_of_correlations = attributes[:'numberOfCorrelations']
      end

      if attributes.has_key?(:'outcome')
        self.outcome = attributes[:'outcome']
      end

      if attributes.has_key?(:'measurementsAtLastAnalysis')
        self.measurements_at_last_analysis = attributes[:'measurementsAtLastAnalysis']
      end

      if attributes.has_key?(:'numberOfMeasurements')
        self.number_of_measurements = attributes[:'numberOfMeasurements']
      end

      if attributes.has_key?(:'lastUnit')
        self.last_unit = attributes[:'lastUnit']
      end

      if attributes.has_key?(:'lastValue')
        self.last_value = attributes[:'lastValue']
      end

      if attributes.has_key?(:'mostCommonValue')
        self.most_common_value = attributes[:'mostCommonValue']
      end

      if attributes.has_key?(:'mostCommonUnit')
        self.most_common_unit = attributes[:'mostCommonUnit']
      end

      if attributes.has_key?(:'lastSource')
        self.last_source = attributes[:'lastSource']
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
      return false if @name.nil?
      return false if @original_name.nil?
      return false if @category.nil?
      return false if @abbreviated_unit_name.nil?
      return false if @abbreviated_unit_id.nil?
      return false if @sources.nil?
      return false if @minimum_value.nil?
      return false if @maximum_value.nil?
      return false if @combination_operation.nil?
      combination_operation_validator = EnumAttributeValidator.new('String', ["MEAN", "SUM"])
      return false unless combination_operation_validator.valid?(@combination_operation)
      return false if @filling_value.nil?
      return false if @join_with.nil?
      return false if @joined_variables.nil?
      return false if @parent.nil?
      return false if @sub_variables.nil?
      return false if @onset_delay.nil?
      return false if @duration_of_action.nil?
      return false if @earliest_measurement_time.nil?
      return false if @latest_measurement_time.nil?
      return false if @updated.nil?
      return false if @cause_only.nil?
      return false if @number_of_correlations.nil?
      return false if @outcome.nil?
      return false if @measurements_at_last_analysis.nil?
      return false if @number_of_measurements.nil?
      return false if @last_unit.nil?
      return false if @last_value.nil?
      return false if @most_common_value.nil?
      return false if @most_common_unit.nil?
      return false if @last_source.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] combination_operation Object to be assigned
    def combination_operation=(combination_operation)
      validator = EnumAttributeValidator.new('String', ["MEAN", "SUM"])
      unless validator.valid?(combination_operation)
        fail ArgumentError, "invalid value for 'combination_operation', must be one of #{validator.allowable_values}."
      end
      @combination_operation = combination_operation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          original_name == o.original_name &&
          category == o.category &&
          abbreviated_unit_name == o.abbreviated_unit_name &&
          abbreviated_unit_id == o.abbreviated_unit_id &&
          sources == o.sources &&
          minimum_value == o.minimum_value &&
          maximum_value == o.maximum_value &&
          combination_operation == o.combination_operation &&
          filling_value == o.filling_value &&
          join_with == o.join_with &&
          joined_variables == o.joined_variables &&
          parent == o.parent &&
          sub_variables == o.sub_variables &&
          onset_delay == o.onset_delay &&
          duration_of_action == o.duration_of_action &&
          earliest_measurement_time == o.earliest_measurement_time &&
          latest_measurement_time == o.latest_measurement_time &&
          updated == o.updated &&
          cause_only == o.cause_only &&
          number_of_correlations == o.number_of_correlations &&
          outcome == o.outcome &&
          measurements_at_last_analysis == o.measurements_at_last_analysis &&
          number_of_measurements == o.number_of_measurements &&
          last_unit == o.last_unit &&
          last_value == o.last_value &&
          most_common_value == o.most_common_value &&
          most_common_unit == o.most_common_unit &&
          last_source == o.last_source
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, original_name, category, abbreviated_unit_name, abbreviated_unit_id, sources, minimum_value, maximum_value, combination_operation, filling_value, join_with, joined_variables, parent, sub_variables, onset_delay, duration_of_action, earliest_measurement_time, latest_measurement_time, updated, cause_only, number_of_correlations, outcome, measurements_at_last_analysis, number_of_measurements, last_unit, last_value, most_common_value, most_common_unit, last_source].hash
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
