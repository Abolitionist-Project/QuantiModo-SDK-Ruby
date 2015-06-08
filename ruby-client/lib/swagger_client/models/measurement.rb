module SwaggerClient
  # 
  class Measurement < BaseObject
    attr_accessor :variable, :source, :timestamp, :value, :unit, :note
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # ORIGINAL Name of the variable for which we are creating the measurement records
        :'variable' => :'variable',
        
        # Application or device used to record the measurement values
        :'source' => :'source',
        
        # Timestamp for the measurement event in epoch time
        :'timestamp' => :'timestamp',
        
        # Measurement value
        :'value' => :'value',
        
        # Unit of Measurement
        :'unit' => :'unit',
        
        # Optional note supplied with the measurement. Can be up to 255 characters in length.
        :'note' => :'note'
        
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
        :'note' => :'string'
        
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
      
      if attributes[:'note']
        @note = attributes[:'note']
      end
      
    end
  end
end
