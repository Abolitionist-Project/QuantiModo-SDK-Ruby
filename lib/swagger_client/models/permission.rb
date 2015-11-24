module SwaggerClient
  # 
  class Permission < BaseObject
    attr_accessor :target, :variable_name, :min_timestamp, :max_timestamp, :min_time_of_day, :max_time_of_day, :week
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Grant permission to target user or public so they may access measurements within the given parameters. TODO: Rename target to something more intuitive.
        :'target' => :'target',
        
        # ORIGINAL Variable name
        :'variable_name' => :'variableName',
        
        # Earliest time when measurements will be accessible in epoch seconds
        :'min_timestamp' => :'min_timestamp',
        
        # Latest time when measurements will be accessible in epoch seconds
        :'max_timestamp' => :'max_timestamp',
        
        # Earliest time of day when measurements will be accessible in epoch seconds
        :'min_time_of_day' => :'min_time_of_day',
        
        # Latest time of day when measurements will be accessible in epoch seconds
        :'max_time_of_day' => :'max_time_of_day',
        
        # Maybe specifies if only weekday measurements should be accessible
        :'week' => :'week'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'target' => :'Integer',
        :'variable_name' => :'String',
        :'min_timestamp' => :'Integer',
        :'max_timestamp' => :'Integer',
        :'min_time_of_day' => :'Integer',
        :'max_time_of_day' => :'Integer',
        :'week' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'target']
        self.target = attributes[:'target']
      end
      
      if attributes[:'variableName']
        self.variable_name = attributes[:'variableName']
      end
      
      if attributes[:'min_timestamp']
        self.min_timestamp = attributes[:'min_timestamp']
      end
      
      if attributes[:'max_timestamp']
        self.max_timestamp = attributes[:'max_timestamp']
      end
      
      if attributes[:'min_time_of_day']
        self.min_time_of_day = attributes[:'min_time_of_day']
      end
      
      if attributes[:'max_time_of_day']
        self.max_time_of_day = attributes[:'max_time_of_day']
      end
      
      if attributes[:'week']
        self.week = attributes[:'week']
      end
      
    end

  end
end
