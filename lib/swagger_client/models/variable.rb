module SwaggerClient
  # 
  class Variable < BaseObject
    attr_accessor :id, :name, :original_name, :category, :unit, :sources, :minimum_value, :maximum_value, :combination_operation, :filling_value, :join_with, :joined_variables, :parent, :sub_variables, :onset_delay, :duration_of_action, :earliest_measurement_time, :latest_measurement_time, :updated, :cause_only, :number_of_correlations, :outcome, :measurements_at_last_analysis, :number_of_measurements, :last_unit, :last_value, :most_common_value, :most_common_unit, :last_source
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Variable ID
        :'id' => :'id',
        
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
        :'filling_value' => :'fillingValue',
        
        # The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables.
        :'join_with' => :'joinWith',
        
        # Array of Variables that are joined with this Variable
        :'joined_variables' => :'joinedVariables',
        
        # Id of the parent variable if this variable has any parent
        :'parent' => :'parent',
        
        # Array of Variables that are sub variables to this Variable
        :'sub_variables' => :'subVariables',
        
        # How long it takes for a measurement in this variable to take effect
        :'onset_delay' => :'onsetDelay',
        
        # How long the effect of a measurement in this variable lasts
        :'duration_of_action' => :'durationOfAction',
        
        # Earliest measurement time
        :'earliest_measurement_time' => :'earliestMeasurementTime',
        
        # Latest measurement time
        :'latest_measurement_time' => :'latestMeasurementTime',
        
        # When this variable or its settings were last updated
        :'updated' => :'updated',
        
        # A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user.
        :'cause_only' => :'causeOnly',
        
        # Number of correlations
        :'number_of_correlations' => :'numberOfCorrelations',
        
        # Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables.
        :'outcome' => :'outcome',
        
        # The number of measurements that a given user had for this variable the last time a correlation calculation was performed. Generally correlation values are only updated once the current number of measurements for a variable is more than 10% greater than the measurementsAtLastAnalysis.  This avoids a computationally-demanding recalculation when there&#39;s not enough new data to make a significant difference in the correlation.
        :'measurements_at_last_analysis' => :'measurementsAtLastAnalysis',
        
        # Number of measurements
        :'number_of_measurements' => :'numberOfMeasurements',
        
        # Last unit
        :'last_unit' => :'lastUnit',
        
        # Last value
        :'last_value' => :'lastValue',
        
        # Most common value
        :'most_common_value' => :'mostCommonValue',
        
        # Most common unit
        :'most_common_unit' => :'mostCommonUnit',
        
        # Last source
        :'last_source' => :'lastSource'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'original_name' => :'String',
        :'category' => :'String',
        :'unit' => :'String',
        :'sources' => :'String',
        :'minimum_value' => :'Float',
        :'maximum_value' => :'Float',
        :'combination_operation' => :'String',
        :'filling_value' => :'Float',
        :'join_with' => :'String',
        :'joined_variables' => :'Array<Variable>',
        :'parent' => :'Integer',
        :'sub_variables' => :'Array<Variable>',
        :'onset_delay' => :'Integer',
        :'duration_of_action' => :'Integer',
        :'earliest_measurement_time' => :'Integer',
        :'latest_measurement_time' => :'Integer',
        :'updated' => :'Integer',
        :'cause_only' => :'Integer',
        :'number_of_correlations' => :'Integer',
        :'outcome' => :'Integer',
        :'measurements_at_last_analysis' => :'Integer',
        :'number_of_measurements' => :'Integer',
        :'last_unit' => :'Integer',
        :'last_value' => :'Integer',
        :'most_common_value' => :'Integer',
        :'most_common_unit' => :'Integer',
        :'last_source' => :'Integer'
        
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
      
      if attributes[:'originalName']
        self.original_name = attributes[:'originalName']
      end
      
      if attributes[:'category']
        self.category = attributes[:'category']
      end
      
      if attributes[:'unit']
        self.unit = attributes[:'unit']
      end
      
      if attributes[:'sources']
        self.sources = attributes[:'sources']
      end
      
      if attributes[:'minimumValue']
        self.minimum_value = attributes[:'minimumValue']
      end
      
      if attributes[:'maximumValue']
        self.maximum_value = attributes[:'maximumValue']
      end
      
      if attributes[:'combinationOperation']
        self.combination_operation = attributes[:'combinationOperation']
      end
      
      if attributes[:'fillingValue']
        self.filling_value = attributes[:'fillingValue']
      end
      
      if attributes[:'joinWith']
        self.join_with = attributes[:'joinWith']
      end
      
      if attributes[:'joinedVariables']
        if (value = attributes[:'joinedVariables']).is_a?(Array)
          self.joined_variables = value
        end
      end
      
      if attributes[:'parent']
        self.parent = attributes[:'parent']
      end
      
      if attributes[:'subVariables']
        if (value = attributes[:'subVariables']).is_a?(Array)
          self.sub_variables = value
        end
      end
      
      if attributes[:'onsetDelay']
        self.onset_delay = attributes[:'onsetDelay']
      end
      
      if attributes[:'durationOfAction']
        self.duration_of_action = attributes[:'durationOfAction']
      end
      
      if attributes[:'earliestMeasurementTime']
        self.earliest_measurement_time = attributes[:'earliestMeasurementTime']
      end
      
      if attributes[:'latestMeasurementTime']
        self.latest_measurement_time = attributes[:'latestMeasurementTime']
      end
      
      if attributes[:'updated']
        self.updated = attributes[:'updated']
      end
      
      if attributes[:'causeOnly']
        self.cause_only = attributes[:'causeOnly']
      end
      
      if attributes[:'numberOfCorrelations']
        self.number_of_correlations = attributes[:'numberOfCorrelations']
      end
      
      if attributes[:'outcome']
        self.outcome = attributes[:'outcome']
      end
      
      if attributes[:'measurementsAtLastAnalysis']
        self.measurements_at_last_analysis = attributes[:'measurementsAtLastAnalysis']
      end
      
      if attributes[:'numberOfMeasurements']
        self.number_of_measurements = attributes[:'numberOfMeasurements']
      end
      
      if attributes[:'lastUnit']
        self.last_unit = attributes[:'lastUnit']
      end
      
      if attributes[:'lastValue']
        self.last_value = attributes[:'lastValue']
      end
      
      if attributes[:'mostCommonValue']
        self.most_common_value = attributes[:'mostCommonValue']
      end
      
      if attributes[:'mostCommonUnit']
        self.most_common_unit = attributes[:'mostCommonUnit']
      end
      
      if attributes[:'lastSource']
        self.last_source = attributes[:'lastSource']
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
