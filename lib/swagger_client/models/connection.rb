module SwaggerClient
  # 
  class Connection < BaseObject
    attr_accessor :id, :user_id, :connector_id, :connect_status, :connect_error, :update_requested_at, :update_status, :update_error, :last_successful_updated_at, :created_at, :updated_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # id
        :'id' => :'id',
        
        # user_id
        :'user_id' => :'user_id',
        
        # connector_id
        :'connector_id' => :'connector_id',
        
        # connect_status
        :'connect_status' => :'connect_status',
        
        # connect_error
        :'connect_error' => :'connect_error',
        
        # update_requested_at
        :'update_requested_at' => :'update_requested_at',
        
        # update_status
        :'update_status' => :'update_status',
        
        # update_error
        :'update_error' => :'update_error',
        
        # last_successful_updated_at
        :'last_successful_updated_at' => :'last_successful_updated_at',
        
        # created_at
        :'created_at' => :'created_at',
        
        # updated_at
        :'updated_at' => :'updated_at'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'user_id' => :'Integer',
        :'connector_id' => :'Integer',
        :'connect_status' => :'String',
        :'connect_error' => :'String',
        :'update_requested_at' => :'DateTime',
        :'update_status' => :'String',
        :'update_error' => :'String',
        :'last_successful_updated_at' => :'DateTime',
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
      
      if attributes[:'connect_status']
        self.connect_status = attributes[:'connect_status']
      end
      
      if attributes[:'connect_error']
        self.connect_error = attributes[:'connect_error']
      end
      
      if attributes[:'update_requested_at']
        self.update_requested_at = attributes[:'update_requested_at']
      end
      
      if attributes[:'update_status']
        self.update_status = attributes[:'update_status']
      end
      
      if attributes[:'update_error']
        self.update_error = attributes[:'update_error']
      end
      
      if attributes[:'last_successful_updated_at']
        self.last_successful_updated_at = attributes[:'last_successful_updated_at']
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
