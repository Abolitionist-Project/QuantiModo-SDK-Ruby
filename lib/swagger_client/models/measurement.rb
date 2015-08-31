module SwaggerClient
  # 
  class Measurement < BaseObject
    attr_accessor :variable, :source, :timestamp, :value, :unit, :stored_value, :stored_abbreviated_unit_name
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
        :'stored_abbreviated_unit_name' => :'storedAbbreviatedUnitName'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'variable' => :'String',
        :'source' => :'String',
        :'timestamp' => :'Integer',
        :'value' => :'Float',
        :'unit' => :'String',
        :'stored_value' => :'Float',
        :'stored_abbreviated_unit_name' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'variable']
        self.variable = attributes[:'variable']
      end
      
      if attributes[:'source']
        self.source = attributes[:'source']
      end
      
      if attributes[:'timestamp']
        self.timestamp = attributes[:'timestamp']
      end
      
      if attributes[:'value']
        self.value = attributes[:'value']
      end
      
      if attributes[:'unit']
        self.unit = attributes[:'unit']
      end
      
      if attributes[:'storedValue']
        self.stored_value = attributes[:'storedValue']
      end
      
      if attributes[:'storedAbbreviatedUnitName']
        self.stored_abbreviated_unit_name = attributes[:'storedAbbreviatedUnitName']
      end
      
    end

  end
end
