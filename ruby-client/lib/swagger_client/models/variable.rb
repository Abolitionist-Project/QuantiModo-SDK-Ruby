module SwaggerClient
  # 
  class Variable < BaseObject
    attr_accessor :name, :original_name, :category, :unit, :sources, :minimum_value, :maximum_value, :combination_operation, :filling_value
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # User-defined variable display name.
        :'name' => :'name',
        
        # Name used when the variable was originally created in the `variables` table.
        :'original_name' => :'originalName',
        
        # Variable category like Mood, Sleep, Physical Activity, Treatment, Symptom, etc.
        :'category' => :'category',
        
        # Abbreviated name of the default unit for the variable
        :'unit' => :'unit',
        
        # Comma-separated list of source names to limit variables to those sources
        :'sources' => :'sources',
        
        # Minimum reasonable value for this variable (uses default unit)
        :'minimum_value' => :'minimumValue',
        
        # Maximum reasonable value for this variable (uses default unit)
        :'maximum_value' => :'maximumValue',
        
        # How to aggregate measurements over time.
        :'combination_operation' => :'combinationOperation',
        
        # Value for replacing null measurements
        :'filling_value' => :'fillingValue'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'string',
        :'original_name' => :'string',
        :'category' => :'string',
        :'unit' => :'string',
        :'sources' => :'string',
        :'minimum_value' => :'double',
        :'maximum_value' => :'double',
        :'combination_operation' => :'string',
        :'filling_value' => :'double'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'name']
        @name = attributes[:'name']
      end
      
      if attributes[:'originalName']
        @original_name = attributes[:'originalName']
      end
      
      if attributes[:'category']
        @category = attributes[:'category']
      end
      
      if attributes[:'unit']
        @unit = attributes[:'unit']
      end
      
      if attributes[:'sources']
        @sources = attributes[:'sources']
      end
      
      if attributes[:'minimumValue']
        @minimum_value = attributes[:'minimumValue']
      end
      
      if attributes[:'maximumValue']
        @maximum_value = attributes[:'maximumValue']
      end
      
      if attributes[:'combinationOperation']
        @combination_operation = attributes[:'combinationOperation']
      end
      
      if attributes[:'fillingValue']
        @filling_value = attributes[:'fillingValue']
      end
      
    end
  end
end
