module SwaggerClient
  # 
  class UserTokenSuccessfulResponse < BaseObject
    attr_accessor :code, :message, :user
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Status code
        :'code' => :'code',
        
        # Message
        :'message' => :'message',
        
        # 
        :'user' => :'user'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'code' => :'int',
        :'message' => :'string',
        :'user' => :'UserTokenSuccessfulResponseInnerUserField'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'code']
        @code = attributes[:'code']
      end
      
      if attributes[:'message']
        @message = attributes[:'message']
      end
      
      if attributes[:'user']
        @user = attributes[:'user']
      end
      
    end
  end
end
