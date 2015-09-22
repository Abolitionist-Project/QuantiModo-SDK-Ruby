module SwaggerClient
  # 
  class Measurement < BaseObject
    attr_accessor :variable, :source, :timestamp, :start_time, :human_time, :value, :unit, :original_value, :stored_value, :stored_abbreviated_unit_name, :original_abbreviated_unit_name, :abbreviated_unit_name, :note
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # ORIGINAL Name of the variable for which we are creating the measurement records
        :'variable' => :'variable',
        
        # Application or device used to record the measurement values
        :'source' => :'source',
        
        # Timestamp for the measurement event in epoch time
        :'timestamp' => :'timestamp',
        
        # Start Time for the measurement event in ISO 8601
        :'start_time' => :'startTime',
        
        # Start Time for the measurement event in ISO 8601
        :'human_time' => :'humanTime',
        
        # Converted measurement value in requested unit
        :'value' => :'value',
        
        # Unit of measurement as requested in GET request
        :'unit' => :'unit',
        
        # Original value
        :'original_value' => :'originalValue',
        
        # Measurement value in the unit as orignally submitted
        :'stored_value' => :'storedValue',
        
        # Unit of measurement as originally submitted
        :'stored_abbreviated_unit_name' => :'storedAbbreviatedUnitName',
        
        # Original Unit of measurement as originally submitted
        :'original_abbreviated_unit_name' => :'originalAbbreviatedUnitName',
        
        # Unit of measurement as originally submitted
        :'abbreviated_unit_name' => :'abbreviatedUnitName',
        
        # Note of measurement
        :'note' => :'note'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'variable' => :'String',
        :'source' => :'String',
        :'timestamp' => :'Integer',
        :'start_time' => :'String',
        :'human_time' => :'HumanTime',
        :'value' => :'Float',
        :'unit' => :'String',
        :'original_value' => :'Integer',
        :'stored_value' => :'Float',
        :'stored_abbreviated_unit_name' => :'String',
        :'original_abbreviated_unit_name' => :'String',
        :'abbreviated_unit_name' => :'String',
        :'note' => :'String'
        
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
      
      if attributes[:'startTime']
        self.start_time = attributes[:'startTime']
      end
      
      if attributes[:'humanTime']
        self.human_time = attributes[:'humanTime']
      end
      
      if attributes[:'value']
        self.value = attributes[:'value']
      end
      
      if attributes[:'unit']
        self.unit = attributes[:'unit']
      end
      
      if attributes[:'originalValue']
        self.original_value = attributes[:'originalValue']
      end
      
      if attributes[:'storedValue']
        self.stored_value = attributes[:'storedValue']
      end
      
      if attributes[:'storedAbbreviatedUnitName']
        self.stored_abbreviated_unit_name = attributes[:'storedAbbreviatedUnitName']
      end
      
      if attributes[:'originalAbbreviatedUnitName']
        self.original_abbreviated_unit_name = attributes[:'originalAbbreviatedUnitName']
      end
      
      if attributes[:'abbreviatedUnitName']
        self.abbreviated_unit_name = attributes[:'abbreviatedUnitName']
      end
      
      if attributes[:'note']
        self.note = attributes[:'note']
      end
      
    end

  end
end
