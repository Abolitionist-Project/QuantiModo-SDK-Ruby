module SwaggerClient
  # 
  class Update < BaseObject
    attr_accessor :id, :user_id, :connector_id, :number_of_measurements, :success, :message, :created_at, :updated_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # id
        :'id' => :'id',
        
        # user_id
        :'user_id' => :'user_id',
        
        # connector_id
        :'connector_id' => :'connector_id',
        
        # number_of_measurements
        :'number_of_measurements' => :'number_of_measurements',
        
        # success
        :'success' => :'success',
        
        # message
        :'message' => :'message',
        
        # When the record was first created. Use ISO 8601 datetime format
        :'created_at' => :'created_at',
        
        # When the record in the database was last updated. Use ISO 8601 datetime format
        :'updated_at' => :'updated_at'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'user_id' => :'Integer',
        :'connector_id' => :'Integer',
        :'number_of_measurements' => :'Integer',
        :'success' => :'BOOLEAN',
        :'message' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'user_id']
        self.user_id = attributes[:'user_id']
      end
      
      if attributes[:'connector_id']
        self.connector_id = attributes[:'connector_id']
      end
      
      if attributes[:'number_of_measurements']
        self.number_of_measurements = attributes[:'number_of_measurements']
      end
      
      if attributes[:'success']
        self.success = attributes[:'success']
      end
      
      if attributes[:'message']
        self.message = attributes[:'message']
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
