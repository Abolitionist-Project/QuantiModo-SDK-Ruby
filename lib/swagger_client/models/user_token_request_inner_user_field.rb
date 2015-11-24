module SwaggerClient
  # 
  class UserTokenRequestInnerUserField < BaseObject
    attr_accessor :_id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # WordPress user ID
        :'_id' => :'_id'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'_id' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'_id']
        self._id = attributes[:'_id']
      end
      
    end

  end
end
