module SwaggerClient
  # 
  class UserTokenFailedResponse < BaseObject
    attr_accessor :code, :message, :success
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Status code
        :'code' => :'code',
        
        # Message
        :'message' => :'message',
        
        # 
        :'success' => :'success'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'code' => :'Integer',
        :'message' => :'String',
        :'success' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'code']
        self.code = attributes[:'code']
      end
      
      if attributes[:'message']
        self.message = attributes[:'message']
      end
      
      if attributes[:'success']
        self.success = attributes[:'success']
      end
      
    end

  end
end
