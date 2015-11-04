module SwaggerClient
  # 
  class InlineResponse20011 < BaseObject
    attr_accessor :data, :success
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'data' => :'data',
        
        # 
        :'success' => :'success'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'data' => :'Array<Measurement>',
        :'success' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'data']
        if (value = attributes[:'data']).is_a?(Array)
          self.data = value
        end
      end
      
      if attributes[:'success']
        self.success = attributes[:'success']
      end
      
    end

  end
end
