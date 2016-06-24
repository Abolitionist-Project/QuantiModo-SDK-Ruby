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

  class TrackingReminderNotification
    # id for the specific PENDING tracking remidner
    attr_accessor :id

    # id for the repeating tracking remidner
    attr_accessor :tracking_reminder_id

    # clientId
    attr_accessor :client_id

    # ID of User
    attr_accessor :user_id

    # Id for the variable to be tracked
    attr_accessor :variable_id

    # ISO 8601 timestamp for the specific time the variable should be tracked in UTC.  This will be used for the measurement startTime if the track endpoint is used.
    attr_accessor :pending_reminder_time

    # Default value to use for the measurement when tracking
    attr_accessor :default_value

    # String identifier for the sound to accompany the reminder
    attr_accessor :reminder_sound

    # True if the reminders should appear as a popup notification
    attr_accessor :pop_up

    # True if the reminders should be delivered via SMS
    attr_accessor :sms

    # True if the reminders should be delivered via email
    attr_accessor :email

    # True if the reminders should appear in the notification bar
    attr_accessor :notification_bar

    # When the record in the database was last updated. Use ISO 8601 datetime format. Time zone should be UTC and not local.
    attr_accessor :updated_at

    # Name of the variable to be used when sending measurements
    attr_accessor :variable_name

    # Name of the variable category to be used when sending measurements
    attr_accessor :variable_category_name

    # Abbreviated name of the unit to be used when sending measurements
    attr_accessor :abbreviated_unit_name

    # The way multiple measurements are aggregated over time
    attr_accessor :combination_operation

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
        :'tracking_reminder_id' => :'trackingReminderId',
        :'client_id' => :'clientId',
        :'user_id' => :'userId',
        :'variable_id' => :'variableId',
        :'pending_reminder_time' => :'pendingReminderTime',
        :'default_value' => :'defaultValue',
        :'reminder_sound' => :'reminderSound',
        :'pop_up' => :'popUp',
        :'sms' => :'sms',
        :'email' => :'email',
        :'notification_bar' => :'notificationBar',
        :'updated_at' => :'updatedAt',
        :'variable_name' => :'variableName',
        :'variable_category_name' => :'variableCategoryName',
        :'abbreviated_unit_name' => :'abbreviatedUnitName',
        :'combination_operation' => :'combinationOperation'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'tracking_reminder_id' => :'Integer',
        :'client_id' => :'String',
        :'user_id' => :'Integer',
        :'variable_id' => :'Integer',
        :'pending_reminder_time' => :'DateTime',
        :'default_value' => :'Float',
        :'reminder_sound' => :'String',
        :'pop_up' => :'BOOLEAN',
        :'sms' => :'BOOLEAN',
        :'email' => :'BOOLEAN',
        :'notification_bar' => :'BOOLEAN',
        :'updated_at' => :'DateTime',
        :'variable_name' => :'String',
        :'variable_category_name' => :'String',
        :'abbreviated_unit_name' => :'String',
        :'combination_operation' => :'String'
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

      if attributes.has_key?(:'trackingReminderId')
        self.tracking_reminder_id = attributes[:'trackingReminderId']
      end

      if attributes.has_key?(:'clientId')
        self.client_id = attributes[:'clientId']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'variableId')
        self.variable_id = attributes[:'variableId']
      end

      if attributes.has_key?(:'pendingReminderTime')
        self.pending_reminder_time = attributes[:'pendingReminderTime']
      end

      if attributes.has_key?(:'defaultValue')
        self.default_value = attributes[:'defaultValue']
      end

      if attributes.has_key?(:'reminderSound')
        self.reminder_sound = attributes[:'reminderSound']
      end

      if attributes.has_key?(:'popUp')
        self.pop_up = attributes[:'popUp']
      end

      if attributes.has_key?(:'sms')
        self.sms = attributes[:'sms']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'notificationBar')
        self.notification_bar = attributes[:'notificationBar']
      end

      if attributes.has_key?(:'updatedAt')
        self.updated_at = attributes[:'updatedAt']
      end

      if attributes.has_key?(:'variableName')
        self.variable_name = attributes[:'variableName']
      end

      if attributes.has_key?(:'variableCategoryName')
        self.variable_category_name = attributes[:'variableCategoryName']
      end

      if attributes.has_key?(:'abbreviatedUnitName')
        self.abbreviated_unit_name = attributes[:'abbreviatedUnitName']
      end

      if attributes.has_key?(:'combinationOperation')
        self.combination_operation = attributes[:'combinationOperation']
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
      return false if @id.nil?
      return false if @tracking_reminder_id.nil?
      combination_operation_validator = EnumAttributeValidator.new('String', ["MEAN", "SUM"])
      return false unless combination_operation_validator.valid?(@combination_operation)
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
          tracking_reminder_id == o.tracking_reminder_id &&
          client_id == o.client_id &&
          user_id == o.user_id &&
          variable_id == o.variable_id &&
          pending_reminder_time == o.pending_reminder_time &&
          default_value == o.default_value &&
          reminder_sound == o.reminder_sound &&
          pop_up == o.pop_up &&
          sms == o.sms &&
          email == o.email &&
          notification_bar == o.notification_bar &&
          updated_at == o.updated_at &&
          variable_name == o.variable_name &&
          variable_category_name == o.variable_category_name &&
          abbreviated_unit_name == o.abbreviated_unit_name &&
          combination_operation == o.combination_operation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, tracking_reminder_id, client_id, user_id, variable_id, pending_reminder_time, default_value, reminder_sound, pop_up, sms, email, notification_bar, updated_at, variable_name, variable_category_name, abbreviated_unit_name, combination_operation].hash
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
