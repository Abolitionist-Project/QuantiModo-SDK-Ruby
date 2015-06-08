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
        :'name' => :'string',
        :'abbreviated_name' => :'string',
        :'category' => :'string',
        :'minimum' => :'double',
        :'maximum' => :'double',
        :'conversion_steps' => :'array[ConversionStep]'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'name']
        @name = attributes[:'name']
      end
      
      if attributes[:'abbreviatedName']
        @abbreviated_name = attributes[:'abbreviatedName']
      end
      
      if attributes[:'category']
        @category = attributes[:'category']
      end
      
      if attributes[:'minimum']
        @minimum = attributes[:'minimum']
      end
      
      if attributes[:'maximum']
        @maximum = attributes[:'maximum']
      end
      
      if attributes[:'conversionSteps']
        if (value = attributes[:'conversionSteps']).is_a?(Array)
          @conversion_steps = value
        end
      end
      
    end
  end
end
