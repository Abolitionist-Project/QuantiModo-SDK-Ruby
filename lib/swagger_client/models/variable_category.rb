module SwaggerClient
  # 
  class VariableCategory < BaseObject
    attr_accessor :id, :name, :filling_value, :maximum_allowed_value, :minimum_allowed_value, :duration_of_action, :onset_delay, :combination_operation, :updated, :cause_only, :public, :outcome, :created_at, :updated_at, :image_url, :default_unit_id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # id
        :'id' => :'id',
        
        # Name of the category
        :'name' => :'name',
        
        # Value for replacing null measurements
        :'filling_value' => :'filling_value',
        
        # Maximum recorded value of this category
        :'maximum_allowed_value' => :'maximum_allowed_value',
        
        # Minimum recorded value of this category
        :'minimum_allowed_value' => :'minimum_allowed_value',
        
        # How long the effect of a measurement in this variable lasts
        :'duration_of_action' => :'duration_of_action',
        
        # How long it takes for a measurement in this variable to take effect
        :'onset_delay' => :'onset_delay',
        
        # How to combine values of this variable (for instance, to see a summary of the values over a month) 0 for sum OR 1 for mean
        :'combination_operation' => :'combination_operation',
        
        # updated
        :'updated' => :'updated',
        
        # A value of 1 indicates that this category is generally a cause in a causal relationship.  An example of a causeOnly category would be a category such as Work which would generally not be influenced by the behaviour of the user
        :'cause_only' => :'cause_only',
        
        # Is category public
        :'public' => :'public',
        
        # outcome
        :'outcome' => :'outcome',
        
        # created_at
        :'created_at' => :'created_at',
        
        # updated_at
        :'updated_at' => :'updated_at',
        
        # Image URL
        :'image_url' => :'image_url',
        
        # ID of the default unit for the category
        :'default_unit_id' => :'default_unit_id'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'filling_value' => :'Float',
        :'maximum_allowed_value' => :'Float',
        :'minimum_allowed_value' => :'Float',
        :'duration_of_action' => :'Integer',
        :'onset_delay' => :'Integer',
        :'combination_operation' => :'String',
        :'updated' => :'Integer',
        :'cause_only' => :'BOOLEAN',
        :'public' => :'Integer',
        :'outcome' => :'BOOLEAN',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'image_url' => :'String',
        :'default_unit_id' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'filling_value']
        self.filling_value = attributes[:'filling_value']
      end
      
      if attributes[:'maximum_allowed_value']
        self.maximum_allowed_value = attributes[:'maximum_allowed_value']
      end
      
      if attributes[:'minimum_allowed_value']
        self.minimum_allowed_value = attributes[:'minimum_allowed_value']
      end
      
      if attributes[:'duration_of_action']
        self.duration_of_action = attributes[:'duration_of_action']
      end
      
      if attributes[:'onset_delay']
        self.onset_delay = attributes[:'onset_delay']
      end
      
      if attributes[:'combination_operation']
        self.combination_operation = attributes[:'combination_operation']
      end
      
      if attributes[:'updated']
        self.updated = attributes[:'updated']
      end
      
      if attributes[:'cause_only']
        self.cause_only = attributes[:'cause_only']
      end
      
      if attributes[:'public']
        self.public = attributes[:'public']
      end
      
      if attributes[:'outcome']
        self.outcome = attributes[:'outcome']
      end
      
      if attributes[:'created_at']
        self.created_at = attributes[:'created_at']
      end
      
      if attributes[:'updated_at']
        self.updated_at = attributes[:'updated_at']
      end
      
      if attributes[:'image_url']
        self.image_url = attributes[:'image_url']
      end
      
      if attributes[:'default_unit_id']
        self.default_unit_id = attributes[:'default_unit_id']
      end
      
    end

  end
end
