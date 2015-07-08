module SwaggerClient
  # 
  class UserTokenSuccessfulResponseInnerUserField < BaseObject
    attr_accessor :_id, :access_token
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # WordPress user ID
        :'_id' => :'_id',
        
        # User token
        :'access_token' => :'access_token'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'_id' => :'int',
        :'access_token' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'_id']
        @_id = attributes[:'_id']
      end
      
      if attributes[:'access_token']
        @access_token = attributes[:'access_token']
      end
      
    end
  end
end
