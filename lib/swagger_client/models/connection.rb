module SwaggerClient
  # 
  class Connection < BaseObject
    attr_accessor :id, :user_id, :connector_id, :connect_status, :connect_error, :update_requested_at, :update_status, :update_error, :last_successful_updated_at, :created_at, :updated_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # id
        :'id' => :'id',
        
        # ID of user that owns this correlation
        :'user_id' => :'user_id',
        
        # The id for the connector data source for which the connection is connected
        :'connector_id' => :'connector_id',
        
        # Indicates whether a connector is currently connected to a service for a user.
        :'connect_status' => :'connect_status',
        
        # Error message if there is a problem with authorizing this connection.
        :'connect_error' => :'connect_error',
        
        # Time at which an update was requested by a user.
        :'update_requested_at' => :'update_requested_at',
        
        # Indicates whether a connector is currently updated.
        :'update_status' => :'update_status',
        
        # Indicates if there was an error during the update.
        :'update_error' => :'update_error',
        
        # The time at which the connector was last successfully updated.
        :'last_successful_updated_at' => :'last_successful_updated_at',
        
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
