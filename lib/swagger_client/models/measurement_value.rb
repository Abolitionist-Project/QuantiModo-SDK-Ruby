module SwaggerClient
  # 
  class MeasurementValue < BaseObject
    attr_accessor :start_time, :value
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # start_time
        :'start_time' => :'start_time',
        
        # value
        :'value' => :'value'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'start_time' => :'Integer',
        :'value' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'start_time']
        self.start_time = attributes[:'start_time']
      end
      
      if attributes[:'value']
        self.value = attributes[:'value']
      end
      
    end

  end
end
