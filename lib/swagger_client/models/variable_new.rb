module SwaggerClient
  # 
  class VariableNew < BaseObject
    attr_accessor :name, :category, :unit, :combination_operation, :parent
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # User-defined variable display name.
        :'name' => :'name',
        
        # Variable category like Mood, Sleep, Physical Activity, Treatment, Symptom, etc.
        :'category' => :'category',
        
        # Abbreviated name of the default unit for the variable
        :'unit' => :'unit',
        
        # How to aggregate measurements over time.
        :'combination_operation' => :'combinationOperation',
        
        # Parent
        :'parent' => :'parent'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'String',
        :'category' => :'String',
        :'unit' => :'String',
        :'combination_operation' => :'String',
        :'parent' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'category']
        self.category = attributes[:'category']
      end
      
      if attributes[:'unit']
        self.unit = attributes[:'unit']
      end
      
      if attributes[:'combinationOperation']
        self.combination_operation = attributes[:'combinationOperation']
      end
      
      if attributes[:'parent']
        self.parent = attributes[:'parent']
      end
      
    end

    def combination_operation=(combination_operation)
      allowed_values = ["MEAN", "SUM"]
      if combination_operation && !allowed_values.include?(combination_operation)
        fail "invalid value for 'combination_operation', must be one of #{allowed_values}"
      end
      @combination_operation = combination_operation
    end

  end
end
