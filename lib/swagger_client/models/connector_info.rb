module SwaggerClient
  # 
  class ConnectorInfo < BaseObject
    attr_accessor :id, :connected, :error, :history
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Connector ID number
        :'id' => :'id',
        
        # True if the authenticated user has this connector enabled
        :'connected' => :'connected',
        
        # Error message. Empty if connected.
        :'error' => :'error',
        
        # 
        :'history' => :'history'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'connected' => :'BOOLEAN',
        :'error' => :'String',
        :'history' => :'Array<ConnectorInfoHistoryItem>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'connected']
        self.connected = attributes[:'connected']
      end
      
      if attributes[:'error']
        self.error = attributes[:'error']
      end
      
      if attributes[:'history']
        if (value = attributes[:'history']).is_a?(Array)
          self.history = value
        end
      end
      
    end

  end
end
