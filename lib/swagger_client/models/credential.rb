module SwaggerClient
  # 
  class Credential < BaseObject
    attr_accessor :user_id, :connector_id, :attr_key, :attr_value, :created_at, :updated_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # ID of user that owns this credential
        :'user_id' => :'user_id',
        
        # The id for the connector data source from which the credential was obtained
        :'connector_id' => :'connector_id',
        
        # Attribute name such as token, userid, username, or password
        :'attr_key' => :'attr_key',
        
        # Encrypted value for the attribute specified
        :'attr_value' => :'attr_value',
        
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
        :'connector_id' => :'Integer',
        :'attr_key' => :'String',
        :'attr_value' => :'String',
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
      
      if attributes[:'connector_id']
        self.connector_id = attributes[:'connector_id']
      end
      
      if attributes[:'attr_key']
        self.attr_key = attributes[:'attr_key']
      end
      
      if attributes[:'attr_value']
        self.attr_value = attributes[:'attr_value']
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
