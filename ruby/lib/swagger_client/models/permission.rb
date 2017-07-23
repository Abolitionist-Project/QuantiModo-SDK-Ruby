=begin
#QuantiModo

#QuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications. [Learn about QuantiModo](https://quantimo.do), check out our [docs](https://github.com/QuantiModo/docs) or contact us at [help.quantimo.do](https://help.quantimo.do). 

OpenAPI spec version: 2.0

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

  class Permission
    # Grant permission to target user or public so they may access measurements within the given parameters. TODO: Rename target to something more intuitive.
    attr_accessor :target

    # ORIGINAL Variable name
    attr_accessor :variable_name

    # Earliest time when measurements will be accessible in epoch seconds
    attr_accessor :min_timestamp

    # Latest time when measurements will be accessible in epoch seconds
    attr_accessor :max_timestamp

    # Earliest time of day when measurements will be accessible in epoch seconds
    attr_accessor :min_time_of_day

    # Latest time of day when measurements will be accessible in epoch seconds
    attr_accessor :max_time_of_day

    # Maybe specifies if only weekday measurements should be accessible
    attr_accessor :week


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'target' => :'target',
        :'variable_name' => :'variableName',
        :'min_timestamp' => :'minTimestamp',
        :'max_timestamp' => :'maxTimestamp',
        :'min_time_of_day' => :'minTimeOfDay',
        :'max_time_of_day' => :'maxTimeOfDay',
        :'week' => :'week'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'target' => :'Integer',
        :'variable_name' => :'String',
        :'min_timestamp' => :'Integer',
        :'max_timestamp' => :'Integer',
        :'min_time_of_day' => :'Integer',
        :'max_time_of_day' => :'Integer',
        :'week' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.has_key?(:'variableName')
        self.variable_name = attributes[:'variableName']
      end

      if attributes.has_key?(:'minTimestamp')
        self.min_timestamp = attributes[:'minTimestamp']
      end

      if attributes.has_key?(:'maxTimestamp')
        self.max_timestamp = attributes[:'maxTimestamp']
      end

      if attributes.has_key?(:'minTimeOfDay')
        self.min_time_of_day = attributes[:'minTimeOfDay']
      end

      if attributes.has_key?(:'maxTimeOfDay')
        self.max_time_of_day = attributes[:'maxTimeOfDay']
      end

      if attributes.has_key?(:'week')
        self.week = attributes[:'week']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @target.nil?
        invalid_properties.push("invalid value for 'target', target cannot be nil.")
      end

      if @variable_name.nil?
        invalid_properties.push("invalid value for 'variable_name', variable_name cannot be nil.")
      end

      if @min_timestamp.nil?
        invalid_properties.push("invalid value for 'min_timestamp', min_timestamp cannot be nil.")
      end

      if @max_timestamp.nil?
        invalid_properties.push("invalid value for 'max_timestamp', max_timestamp cannot be nil.")
      end

      if @min_time_of_day.nil?
        invalid_properties.push("invalid value for 'min_time_of_day', min_time_of_day cannot be nil.")
      end

      if @max_time_of_day.nil?
        invalid_properties.push("invalid value for 'max_time_of_day', max_time_of_day cannot be nil.")
      end

      if @week.nil?
        invalid_properties.push("invalid value for 'week', week cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @target.nil?
      return false if @variable_name.nil?
      return false if @min_timestamp.nil?
      return false if @max_timestamp.nil?
      return false if @min_time_of_day.nil?
      return false if @max_time_of_day.nil?
      return false if @week.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          target == o.target &&
          variable_name == o.variable_name &&
          min_timestamp == o.min_timestamp &&
          max_timestamp == o.max_timestamp &&
          min_time_of_day == o.min_time_of_day &&
          max_time_of_day == o.max_time_of_day &&
          week == o.week
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [target, variable_name, min_timestamp, max_timestamp, min_time_of_day, max_time_of_day, week].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
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
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
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
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
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