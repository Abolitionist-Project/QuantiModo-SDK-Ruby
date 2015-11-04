module SwaggerClient
  # 
  class MeasurementExport < BaseObject
    attr_accessor :id, :user_id, :status, :error_message, :created_at, :updated_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # id
        :'id' => :'id',
        
        # ID of User
        :'user_id' => :'user_id',
        
        # Status of Measurement Export
        :'status' => :'status',
        
        # Error message
        :'error_message' => :'error_message',
        
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
        :'user_id' => :'Integer',
        :'status' => :'String',
        :'error_message' => :'String',
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
      
      if attributes[:'user_id']
        self.user_id = attributes[:'user_id']
      end
      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'error_message']
        self.error_message = attributes[:'error_message']
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
