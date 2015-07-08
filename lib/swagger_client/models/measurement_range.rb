module SwaggerClient
  # 
  class MeasurementRange < BaseObject
    attr_accessor :lower_limit, :upper_limit
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # The timestamp of the earliest measurement for a user.
        :'lower_limit' => :'lowerLimit',
        
        # The timestamp of the most recent measurement for a user.
        :'upper_limit' => :'upperLimit'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'lower_limit' => :'int',
        :'upper_limit' => :'int'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'lowerLimit']
        @lower_limit = attributes[:'lowerLimit']
      end
      
      if attributes[:'upperLimit']
        @upper_limit = attributes[:'upperLimit']
      end
      
    end
  end
end
