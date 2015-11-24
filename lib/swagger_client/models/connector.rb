module SwaggerClient
  # 
  class Connector < BaseObject
    attr_accessor :id, :name, :display_name, :image, :get_it_url, :short_description, :long_description, :enabled, :oauth, :created_at, :updated_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Connector ID number
        :'id' => :'id',
        
        # Lowercase system name for the data source
        :'name' => :'name',
        
        # Pretty display name for the data source
        :'display_name' => :'display_name',
        
        # URL to the image of the connector logo
        :'image' => :'image',
        
        # URL to a site where one can get this device or application
        :'get_it_url' => :'get_it_url',
        
        # Short description of the service (such as the categories it tracks)
        :'short_description' => :'short_description',
        
        # Longer paragraph description of the data provider
        :'long_description' => :'long_description',
        
        # Set to 1 if the connector should be returned when listing connectors
        :'enabled' => :'enabled',
        
        # Set to 1 if the connector uses OAuth authentication as opposed to username/password
        :'oauth' => :'oauth',
        
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
        :'name' => :'String',
        :'display_name' => :'String',
        :'image' => :'String',
        :'get_it_url' => :'String',
        :'short_description' => :'String',
        :'long_description' => :'String',
        :'enabled' => :'BOOLEAN',
        :'oauth' => :'BOOLEAN',
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
      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'display_name']
        self.display_name = attributes[:'display_name']
      end
      
      if attributes[:'image']
        self.image = attributes[:'image']
      end
      
      if attributes[:'get_it_url']
        self.get_it_url = attributes[:'get_it_url']
      end
      
      if attributes[:'short_description']
        self.short_description = attributes[:'short_description']
      end
      
      if attributes[:'long_description']
        self.long_description = attributes[:'long_description']
      end
      
      if attributes[:'enabled']
        self.enabled = attributes[:'enabled']
      end
      
      if attributes[:'oauth']
        self.oauth = attributes[:'oauth']
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
