module SwaggerClient
  # 
  class Connector < BaseObject
    attr_accessor :id, :name, :display_name, :image, :get_it_url, :short_description, :long_description, :enabled, :oauth
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Connector ID number
        :'id' => :'id',
        
        # Connector lowercase system name
        :'name' => :'name',
        
        # Connector pretty display name
        :'display_name' => :'display_name',
        
        # URL to the image of the connector logo
        :'image' => :'image',
        
        # URL to a site where one can get this device or application
        :'get_it_url' => :'get_it_url',
        
        # Short description
        :'short_description' => :'short_description',
        
        # Long description
        :'long_description' => :'long_description',
        
        # enabled
        :'enabled' => :'enabled',
        
        # oauth
        :'oauth' => :'oauth'
        
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
        :'oauth' => :'BOOLEAN'
        
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
      
    end

  end
end
