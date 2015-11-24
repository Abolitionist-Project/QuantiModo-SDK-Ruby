module SwaggerClient
  # 
  class MeasurementPost < BaseObject
    attr_accessor :variable_id, :source_id, :unit_id, :measurements
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # ID of the variable for the measurement as obtained from the GET variables endpoint
        :'variable_id' => :'variable_id',
        
        # Source ID of the app or device as obtained from the GET sources endpoint
        :'source_id' => :'source_id',
        
        # Unit id for the measurement value as obtained from the GET units endpoint
        :'unit_id' => :'unit_id',
        
        # measurements
        :'measurements' => :'measurements'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'variable_id' => :'Integer',
        :'source_id' => :'Integer',
        :'unit_id' => :'Integer',
        :'measurements' => :'Array<MeasurementValue>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'variable_id']
        self.variable_id = attributes[:'variable_id']
      end
      
      if attributes[:'source_id']
        self.source_id = attributes[:'source_id']
      end
      
      if attributes[:'unit_id']
        self.unit_id = attributes[:'unit_id']
      end
      
      if attributes[:'measurements']
        if (value = attributes[:'measurements']).is_a?(Array)
          self.measurements = value
        end
      end
      
    end

  end
end
