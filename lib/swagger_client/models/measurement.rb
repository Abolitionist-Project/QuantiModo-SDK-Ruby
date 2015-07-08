module SwaggerClient
  # 
  class Measurement < BaseObject
    attr_accessor :variable, :source, :timestamp, :value, :unit, :stored_value, :stored_unit
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # ORIGINAL Name of the variable for which we are creating the measurement records
        :'variable' => :'variable',
        
        # Application or device used to record the measurement values
        :'source' => :'source',
        
        # Timestamp for the measurement event in epoch time
        :'timestamp' => :'timestamp',
        
        # Converted measurement value in requested unit
        :'value' => :'value',
        
        # Unit of measurement as requested in GET request
        :'unit' => :'unit',
        
        # Measurement value in the unit as orignally submitted
        :'stored_value' => :'storedValue',
        
        # Unit of measurement as originally submitted
        :'stored_unit' => :'storedUnit'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'variable' => :'string',
        :'source' => :'string',
        :'timestamp' => :'int',
        :'value' => :'double',
        :'unit' => :'string',
        :'stored_value' => :'double',
        :'stored_unit' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'variable']
        @variable = attributes[:'variable']
      end
      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'timestamp']
        @timestamp = attributes[:'timestamp']
      end
      
      if attributes[:'value']
        @value = attributes[:'value']
      end
      
      if attributes[:'unit']
        @unit = attributes[:'unit']
      end
      
      if attributes[:'storedValue']
        @stored_value = attributes[:'storedValue']
      end
      
      if attributes[:'storedUnit']
        @stored_unit = attributes[:'storedUnit']
      end
      
    end
  end
end
