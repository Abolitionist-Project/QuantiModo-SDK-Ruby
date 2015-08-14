module SwaggerClient
  # 
  class Unit < BaseObject
    attr_accessor :name, :abbreviated_name, :category, :minimum, :maximum, :conversion_steps
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Unit name
        :'name' => :'name',
        
        # Unit abbreviation
        :'abbreviated_name' => :'abbreviatedName',
        
        # Unit category
        :'category' => :'category',
        
        # Unit minimum value
        :'minimum' => :'minimum',
        
        # Unit maximum value
        :'maximum' => :'maximum',
        
        # Conversion steps list
        :'conversion_steps' => :'conversionSteps'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'String',
        :'abbreviated_name' => :'String',
        :'category' => :'String',
        :'minimum' => :'Float',
        :'maximum' => :'Float',
        :'conversion_steps' => :'Array<ConversionStep>'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'abbreviatedName']
        self.abbreviated_name = attributes[:'abbreviatedName']
      end
      
      if attributes[:'category']
        self.category = attributes[:'category']
      end
      
      if attributes[:'minimum']
        self.minimum = attributes[:'minimum']
      end
      
      if attributes[:'maximum']
        self.maximum = attributes[:'maximum']
      end
      
      if attributes[:'conversionSteps']
        if (value = attributes[:'conversionSteps']).is_a?(Array)
          self.conversion_steps = value
        end
      end
      
    end

    def category=(category)
      allowed_values = ["Distance", "Duration", "Energy", "Frequency", "Miscellany", "Pressure", "Proportion", "Rating", "Temperature", "Volume", "Weight"]
      if category && !allowed_values.include?(category)
        fail "invalid value for 'category', must be one of #{allowed_values}"
      end
      @category = category
    end

  end
end
