module SwaggerClient
  # 
  class ConnectorInstruction < BaseObject
    attr_accessor :url, :parameters, :use_popup
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # url
        :'url' => :'url',
        
        # parameters array
        :'parameters' => :'parameters',
        
        # usePopup
        :'use_popup' => :'usePopup'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'url' => :'String',
        :'parameters' => :'Array<String>',
        :'use_popup' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'url']
        self.url = attributes[:'url']
      end
      
      if attributes[:'parameters']
        if (value = attributes[:'parameters']).is_a?(Array)
          self.parameters = value
        end
      end
      
      if attributes[:'usePopup']
        self.use_popup = attributes[:'usePopup']
      end
      
    end

  end
end
