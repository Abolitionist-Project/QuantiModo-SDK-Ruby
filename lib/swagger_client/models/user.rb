module SwaggerClient
  # 
  class User < BaseObject
    attr_accessor :id, :wp_id, :display_name, :login_name, :email, :token, :administrator
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # User id
        :'id' => :'id',
        
        # Wordpress user id
        :'wp_id' => :'wpId',
        
        # User display name
        :'display_name' => :'displayName',
        
        # User login name
        :'login_name' => :'loginName',
        
        # User email
        :'email' => :'email',
        
        # User token
        :'token' => :'token',
        
        # Is user administrator
        :'administrator' => :'administrator'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'int',
        :'wp_id' => :'int',
        :'display_name' => :'string',
        :'login_name' => :'string',
        :'email' => :'string',
        :'token' => :'string',
        :'administrator' => :'boolean'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'wpId']
        @wp_id = attributes[:'wpId']
      end
      
      if attributes[:'displayName']
        @display_name = attributes[:'displayName']
      end
      
      if attributes[:'loginName']
        @login_name = attributes[:'loginName']
      end
      
      if attributes[:'email']
        @email = attributes[:'email']
      end
      
      if attributes[:'token']
        @token = attributes[:'token']
      end
      
      if attributes[:'administrator']
        @administrator = attributes[:'administrator']
      end
      
    end
  end
end
