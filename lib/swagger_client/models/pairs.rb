module SwaggerClient
  # 
  class Pairs < BaseObject
    attr_accessor :name
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Category name
        :'name' => :'name'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
    end

  end
end
