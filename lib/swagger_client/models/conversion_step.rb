module SwaggerClient
  # 
  class ConversionStep < BaseObject
    attr_accessor :operation, :value
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # ADD or MULTIPLY
        :'operation' => :'operation',
        
        # This specifies the order of conversion steps starting with 0
        :'value' => :'value'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'operation' => :'String',
        :'value' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'operation']
        self.operation = attributes[:'operation']
      end
      
      if attributes[:'value']
        self.value = attributes[:'value']
      end
      
    end

    def operation=(operation)
      allowed_values = ["MULTIPLY", "ADD"]
      if operation && !allowed_values.include?(operation)
        fail "invalid value for 'operation', must be one of #{allowed_values}"
      end
      @operation = operation
    end

  end
end
