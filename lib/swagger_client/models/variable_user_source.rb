module SwaggerClient
  # 
  class VariableUserSource < BaseObject
    attr_accessor :user_id, :variable_id, :source_id, :timestamp, :earliest_measurement_time, :latest_measurement_time, :created_at, :updated_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # ID of User
        :'user_id' => :'user_id',
        
        # ID of variable
        :'variable_id' => :'variable_id',
        
        # ID of source
        :'source_id' => :'source_id',
        
        # Time that this measurement occurred Uses epoch minute (epoch time divided by 60)
        :'timestamp' => :'timestamp',
        
        # Earliest measurement time
        :'earliest_measurement_time' => :'earliest_measurement_time',
        
        # Latest measurement time
        :'latest_measurement_time' => :'latest_measurement_time',
        
        # When the record was first created. Use ISO 8601 datetime format
        :'created_at' => :'created_at',
        
        # When the record in the database was last updated. Use ISO 8601 datetime format
        :'updated_at' => :'updated_at'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'user_id' => :'Integer',
        :'variable_id' => :'Integer',
        :'source_id' => :'Integer',
        :'timestamp' => :'Integer',
        :'earliest_measurement_time' => :'Integer',
        :'latest_measurement_time' => :'Integer',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'user_id']
        self.user_id = attributes[:'user_id']
      end
      
      if attributes[:'variable_id']
        self.variable_id = attributes[:'variable_id']
      end
      
      if attributes[:'source_id']
        self.source_id = attributes[:'source_id']
      end
      
      if attributes[:'timestamp']
        self.timestamp = attributes[:'timestamp']
      end
      
      if attributes[:'earliest_measurement_time']
        self.earliest_measurement_time = attributes[:'earliest_measurement_time']
      end
      
      if attributes[:'latest_measurement_time']
        self.latest_measurement_time = attributes[:'latest_measurement_time']
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
