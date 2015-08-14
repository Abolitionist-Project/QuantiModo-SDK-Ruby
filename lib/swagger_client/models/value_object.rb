module SwaggerClient
  # 
  class ValueObject < BaseObject
    attr_accessor :timestamp, :value, :note
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Timestamp for the measurement event in epoch time (unixtime)
        :'timestamp' => :'timestamp',
        
        # Measurement value
        :'value' => :'value',
        
        # Optional note to include with the measurement
        :'note' => :'note'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'timestamp' => :'Integer',
        :'value' => :'Float',
        :'note' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'timestamp']
        self.timestamp = attributes[:'timestamp']
      end
      
      if attributes[:'value']
        self.value = attributes[:'value']
      end
      
      if attributes[:'note']
        self.note = attributes[:'note']
      end
      
    end

  end
end
