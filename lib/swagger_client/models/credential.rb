module SwaggerClient
  # 
  class Credential < BaseObject
    attr_accessor :connector_id, :attr_key, :attr_value, :created_at, :updated_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # connector_id
        :'connector_id' => :'connector_id',
        
        # attr_key
        :'attr_key' => :'attr_key',
        
        # attr_value
        :'attr_value' => :'attr_value',
        
        # created_at
        :'created_at' => :'created_at',
        
        # updated_at
        :'updated_at' => :'updated_at'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
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
