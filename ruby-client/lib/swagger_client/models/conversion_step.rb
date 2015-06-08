module SwaggerClient
  # 
  class ConversionStep < BaseObject
    attr_accessor :operation, :value
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # 
        :'operation' => :'operation',
        
        # 
        :'value' => :'value'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'operation' => :'string',
        :'value' => :'double'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'operation']
        @operation = attributes[:'operation']
      end
      
      if attributes[:'value']
        @value = attributes[:'value']
      end
      
    end
  end
end
