module SwaggerClient
  # 
  class VariableUserSettings < BaseObject
    attr_accessor :user, :variable, :duration_of_action, :filling_value, :join_with, :maximum_value, :minimum_value, :name, :onset_delay, :unit
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # User ID
        :'user' => :'user',
        
        # Variable DISPLAY name
        :'variable' => :'variable',
        
        # Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect
        :'duration_of_action' => :'durationOfAction',
        
        # fillingValue
        :'filling_value' => :'fillingValue',
        
        # joinWith
        :'join_with' => :'joinWith',
        
        # maximumValue
        :'maximum_value' => :'maximumValue',
        
        # minimumValue
        :'minimum_value' => :'minimumValue',
        
        # name
        :'name' => :'name',
        
        # onsetDelay
        :'onset_delay' => :'onsetDelay',
        
        # unit
        :'unit' => :'unit'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'user' => :'Integer',
        :'variable' => :'String',
        :'duration_of_action' => :'Integer',
        :'filling_value' => :'Integer',
        :'join_with' => :'String',
        :'maximum_value' => :'Float',
        :'minimum_value' => :'Float',
        :'name' => :'String',
        :'onset_delay' => :'Integer',
        :'unit' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'user']
        self.user = attributes[:'user']
      end
      
      if attributes[:'variable']
        self.variable = attributes[:'variable']
      end
      
      if attributes[:'durationOfAction']
        self.duration_of_action = attributes[:'durationOfAction']
      end
      
      if attributes[:'fillingValue']
        self.filling_value = attributes[:'fillingValue']
      end
      
      if attributes[:'joinWith']
        self.join_with = attributes[:'joinWith']
      end
      
      if attributes[:'maximumValue']
        self.maximum_value = attributes[:'maximumValue']
      end
      
      if attributes[:'minimumValue']
        self.minimum_value = attributes[:'minimumValue']
      end
      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'onsetDelay']
        self.onset_delay = attributes[:'onsetDelay']
      end
      
      if attributes[:'unit']
        self.unit = attributes[:'unit']
      end
      
    end

  end
end
