module SwaggerClient
  # 
  class ConnectorInfoHistoryItem < BaseObject
    attr_accessor :number_of_measurements, :success, :message, :created_at
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Number of measurements
        :'number_of_measurements' => :'number_of_measurements',
        
        # True if the update was successfull
        :'success' => :'success',
        
        # Error message.
        :'message' => :'message',
        
        # Date and time of the update
        :'created_at' => :'created_at'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'number_of_measurements' => :'Integer',
        :'success' => :'BOOLEAN',
        :'message' => :'String',
        :'created_at' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'number_of_measurements']
        self.number_of_measurements = attributes[:'number_of_measurements']
      end
      
      if attributes[:'success']
        self.success = attributes[:'success']
      end
      
      if attributes[:'message']
        self.message = attributes[:'message']
      end
      
      if attributes[:'created_at']
        self.created_at = attributes[:'created_at']
      end
      
    end

  end
end
