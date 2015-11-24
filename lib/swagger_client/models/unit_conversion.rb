module SwaggerClient
  # 
  class UnitConversion < BaseObject
    attr_accessor :unit_id, :step_number, :operation, :value, :created_at, :updated_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # unit_id
        :'unit_id' => :'unit_id',
        
        # step in the conversion process
        :'step_number' => :'step_number',
        
        # 0 is add and 1 is multiply
        :'operation' => :'operation',
        
        # number used in the operation
        :'value' => :'value',
        
        # When the record was first created. Use ISO 8601 datetime format
        :'created_at' => :'created_at',
        
        # When the record in the database was last updated. Use ISO 8601 datetime format
        :'updated_at' => :'updated_at'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'unit_id' => :'Integer',
        :'step_number' => :'BOOLEAN',
        :'operation' => :'BOOLEAN',
        :'value' => :'Float',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'unit_id']
        self.unit_id = attributes[:'unit_id']
      end
      
      if attributes[:'step_number']
        self.step_number = attributes[:'step_number']
      end
      
      if attributes[:'operation']
        self.operation = attributes[:'operation']
      end
      
      if attributes[:'value']
        self.value = attributes[:'value']
      end
      
      if attributes[:'created_at']
        self.created_at = attributes[:'created_at']
      end
      
      if attributes[:'updated_at']
        self.updated_at = attributes[:'updated_at']
      end
      
    end

  end
end
