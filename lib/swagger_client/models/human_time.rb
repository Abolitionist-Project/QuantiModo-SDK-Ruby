module SwaggerClient
  # 
  class HumanTime < BaseObject
    attr_accessor :date, :timezone_type, :timezone
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # date time
        :'date' => :'date',
        
        # 
        :'timezone_type' => :'timezone_type',
        
        # timezone of date time
        :'timezone' => :'timezone'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'date' => :'String',
        :'timezone_type' => :'Integer',
        :'timezone' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'date']
        self.date = attributes[:'date']
      end
      
      if attributes[:'timezone_type']
        self.timezone_type = attributes[:'timezone_type']
      end
      
      if attributes[:'timezone']
        self.timezone = attributes[:'timezone']
      end
      
    end

  end
end
