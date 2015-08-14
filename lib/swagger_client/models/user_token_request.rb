module SwaggerClient
  # 
  class UserTokenRequest < BaseObject
    attr_accessor :user, :organization_access_token
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'user' => :'user',
        
        # Organization Access token
        :'organization_access_token' => :'organization_access_token'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'user' => :'UserTokenRequestInnerUserField',
        :'organization_access_token' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'user']
        self.user = attributes[:'user']
      end
      
      if attributes[:'organization_access_token']
        self.organization_access_token = attributes[:'organization_access_token']
      end
      
    end

  end
end
