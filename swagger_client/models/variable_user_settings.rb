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
        :'user' => :'int',
        :'variable' => :'string',
        :'duration_of_action' => :'int',
        :'filling_value' => :'int',
        :'join_with' => :'string',
        :'maximum_value' => :'float',
        :'minimum_value' => :'float',
        :'name' => :'string',
        :'onset_delay' => :'int',
        :'unit' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'user']
        @user = attributes[:'user']
      end
      
      if attributes[:'variable']
        @variable = attributes[:'variable']
      end
      
      if attributes[:'durationOfAction']
        @duration_of_action = attributes[:'durationOfAction']
      end
      
      if attributes[:'fillingValue']
        @filling_value = attributes[:'fillingValue']
      end
      
      if attributes[:'joinWith']
        @join_with = attributes[:'joinWith']
      end
      
      if attributes[:'maximumValue']
        @maximum_value = attributes[:'maximumValue']
      end
      
      if attributes[:'minimumValue']
        @minimum_value = attributes[:'minimumValue']
      end
      
      if attributes[:'name']
        @name = attributes[:'name']
      end
      
      if attributes[:'onsetDelay']
        @onset_delay = attributes[:'onsetDelay']
      end
      
      if attributes[:'unit']
        @unit = attributes[:'unit']
      end
      
    end
  end
end
