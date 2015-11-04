module SwaggerClient
  # 
  class Vote < BaseObject
    attr_accessor :id, :client_id, :user_id, :cause_id, :effect_id, :value, :created_at, :updated_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # id
        :'id' => :'id',
        
        # client_id
        :'client_id' => :'client_id',
        
        # ID of User
        :'user_id' => :'user_id',
        
        # ID of cause variable
        :'cause_id' => :'cause_id',
        
        # ID of effect variable
        :'effect_id' => :'effect_id',
        
        # Value of Vote
        :'value' => :'value',
        
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
        :'client_id' => :'String',
        :'user_id' => :'Integer',
        :'cause_id' => :'Integer',
        :'effect_id' => :'Integer',
        :'value' => :'Integer',
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
      
      if attributes[:'client_id']
        self.client_id = attributes[:'client_id']
      end
      
      if attributes[:'user_id']
        self.user_id = attributes[:'user_id']
      end
      
      if attributes[:'cause_id']
        self.cause_id = attributes[:'cause_id']
      end
      
      if attributes[:'effect_id']
        self.effect_id = attributes[:'effect_id']
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
