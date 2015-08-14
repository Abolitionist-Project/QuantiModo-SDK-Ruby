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
        :'id' => :'Integer',
        :'wp_id' => :'Integer',
        :'display_name' => :'String',
        :'login_name' => :'String',
        :'email' => :'String',
        :'token' => :'String',
        :'administrator' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'wpId']
        self.wp_id = attributes[:'wpId']
      end
      
      if attributes[:'displayName']
        self.display_name = attributes[:'displayName']
      end
      
      if attributes[:'loginName']
        self.login_name = attributes[:'loginName']
      end
      
      if attributes[:'email']
        self.email = attributes[:'email']
      end
      
      if attributes[:'token']
        self.token = attributes[:'token']
      end
      
      if attributes[:'administrator']
        self.administrator = attributes[:'administrator']
      end
      
    end

  end
end
