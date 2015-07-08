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
        :'name' => :'string',
        :'category' => :'string',
        :'unit' => :'string',
        :'combination_operation' => :'string',
        :'parent' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'name']
        @name = attributes[:'name']
      end
      
      if attributes[:'category']
        @category = attributes[:'category']
      end
      
      if attributes[:'unit']
        @unit = attributes[:'unit']
      end
      
      if attributes[:'combinationOperation']
        @combination_operation = attributes[:'combinationOperation']
      end
      
      if attributes[:'parent']
        @parent = attributes[:'parent']
      end
      
    end
  end
end
