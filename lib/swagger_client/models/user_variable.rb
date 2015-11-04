module SwaggerClient
  # 
  class UserVariable < BaseObject
    attr_accessor :parent_id, :client_id, :variable_id, :default_unit_id, :minimum_allowed_value, :maximum_allowed_value, :filling_value, :join_with, :onset_delay, :duration_of_action, :variable_category_id, :updated, :public, :cause_only, :filling_type, :number_of_measurements, :number_of_processed_measurements, :measurements_at_last_analysis, :last_unit_id, :last_original_unit_id, :last_value, :last_original_value, :last_source_id, :number_of_correlations, :status, :error_message, :last_successful_update_time, :standard_deviation, :variance, :minimum_recorded_daily_value, :maximum_recorded_daily_value, :mean, :median, :most_common_unit_id, :most_common_value, :number_of_unique_daily_values, :number_of_changes, :skewness, :kurtosis, :latitude, :longitude, :location, :created_at, :updated_at, :outcome, :sources, :earliest_source_time, :latest_source_time, :earliest_measurement_time, :latest_measurement_time, :earliest_filling_time, :latest_filling_time
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # ID of the parent variable if this variable has any parent
        :'parent_id' => :'parent_id',
        
        # client_id
        :'client_id' => :'client_id',
        
        # ID of variable
        :'variable_id' => :'variable_id',
        
        # ID of unit to use for this variable
        :'default_unit_id' => :'default_unit_id',
        
        # Minimum reasonable value for this variable (uses default unit)
        :'minimum_allowed_value' => :'minimum_allowed_value',
        
        # Maximum reasonable value for this variable (uses default unit)
        :'maximum_allowed_value' => :'maximum_allowed_value',
        
        # Value for replacing null measurements
        :'filling_value' => :'filling_value',
        
        # The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables
        :'join_with' => :'join_with',
        
        # How long it takes for a measurement in this variable to take effect
        :'onset_delay' => :'onset_delay',
        
        # Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect
        :'duration_of_action' => :'duration_of_action',
        
        # ID of variable category
        :'variable_category_id' => :'variable_category_id',
        
        # updated
        :'updated' => :'updated',
        
        # Is variable public
        :'public' => :'public',
        
        # A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user
        :'cause_only' => :'cause_only',
        
        # 0 -&gt; No filling, 1 -&gt; Use filling-value
        :'filling_type' => :'filling_type',
        
        # Number of measurements
        :'number_of_measurements' => :'number_of_measurements',
        
        # Number of processed measurements
        :'number_of_processed_measurements' => :'number_of_processed_measurements',
        
        # Number of measurements at last analysis
        :'measurements_at_last_analysis' => :'measurements_at_last_analysis',
        
        # ID of last Unit
        :'last_unit_id' => :'last_unit_id',
        
        # ID of last original Unit
        :'last_original_unit_id' => :'last_original_unit_id',
        
        # Last Value
        :'last_value' => :'last_value',
        
        # Last original value which is stored
        :'last_original_value' => :'last_original_value',
        
        # ID of last source
        :'last_source_id' => :'last_source_id',
        
        # Number of correlations for this variable
        :'number_of_correlations' => :'number_of_correlations',
        
        # status
        :'status' => :'status',
        
        # error_message
        :'error_message' => :'error_message',
        
        # When this variable or its settings were last updated
        :'last_successful_update_time' => :'last_successful_update_time',
        
        # Standard deviation
        :'standard_deviation' => :'standard_deviation',
        
        # Variance
        :'variance' => :'variance',
        
        # Minimum recorded daily value of this variable
        :'minimum_recorded_daily_value' => :'minimum_recorded_daily_value',
        
        # Maximum recorded daily value of this variable
        :'maximum_recorded_daily_value' => :'maximum_recorded_daily_value',
        
        # Mean
        :'mean' => :'mean',
        
        # Median
        :'median' => :'median',
        
        # Most common Unit ID
        :'most_common_unit_id' => :'most_common_unit_id',
        
        # Most common value
        :'most_common_value' => :'most_common_value',
        
        # Number of unique daily values
        :'number_of_unique_daily_values' => :'number_of_unique_daily_values',
        
        # Number of changes
        :'number_of_changes' => :'number_of_changes',
        
        # Skewness
        :'skewness' => :'skewness',
        
        # Kurtosis
        :'kurtosis' => :'kurtosis',
        
        # Latitude
        :'latitude' => :'latitude',
        
        # Longitude
        :'longitude' => :'longitude',
        
        # Location
        :'location' => :'location',
        
        # created_at
        :'created_at' => :'created_at',
        
        # updated_at
        :'updated_at' => :'updated_at',
        
        # Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables
        :'outcome' => :'outcome',
        
        # Comma-separated list of source names to limit variables to those sources
        :'sources' => :'sources',
        
        # Earliest source time
        :'earliest_source_time' => :'earliest_source_time',
        
        # Latest source time
        :'latest_source_time' => :'latest_source_time',
        
        # Earliest measurement time
        :'earliest_measurement_time' => :'earliest_measurement_time',
        
        # Latest measurement time
        :'latest_measurement_time' => :'latest_measurement_time',
        
        # Earliest filling time
        :'earliest_filling_time' => :'earliest_filling_time',
        
        # Latest filling time
        :'latest_filling_time' => :'latest_filling_time'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'parent_id' => :'Integer',
        :'client_id' => :'String',
        :'variable_id' => :'Integer',
        :'default_unit_id' => :'Integer',
        :'minimum_allowed_value' => :'Float',
        :'maximum_allowed_value' => :'Float',
        :'filling_value' => :'Float',
        :'join_with' => :'Integer',
        :'onset_delay' => :'Integer',
        :'duration_of_action' => :'Integer',
        :'variable_category_id' => :'Integer',
        :'updated' => :'Integer',
        :'public' => :'Integer',
        :'cause_only' => :'BOOLEAN',
        :'filling_type' => :'String',
        :'number_of_measurements' => :'Integer',
        :'number_of_processed_measurements' => :'Integer',
        :'measurements_at_last_analysis' => :'Integer',
        :'last_unit_id' => :'Integer',
        :'last_original_unit_id' => :'Integer',
        :'last_value' => :'Float',
        :'last_original_value' => :'Integer',
        :'last_source_id' => :'Integer',
        :'number_of_correlations' => :'Integer',
        :'status' => :'String',
        :'error_message' => :'String',
        :'last_successful_update_time' => :'DateTime',
        :'standard_deviation' => :'Float',
        :'variance' => :'Float',
        :'minimum_recorded_daily_value' => :'Float',
        :'maximum_recorded_daily_value' => :'Float',
        :'mean' => :'Float',
        :'median' => :'Float',
        :'most_common_unit_id' => :'Integer',
        :'most_common_value' => :'Float',
        :'number_of_unique_daily_values' => :'Float',
        :'number_of_changes' => :'Integer',
        :'skewness' => :'Float',
        :'kurtosis' => :'Float',
        :'latitude' => :'Float',
        :'longitude' => :'Float',
        :'location' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'outcome' => :'BOOLEAN',
        :'sources' => :'String',
        :'earliest_source_time' => :'Integer',
        :'latest_source_time' => :'Integer',
        :'earliest_measurement_time' => :'Integer',
        :'latest_measurement_time' => :'Integer',
        :'earliest_filling_time' => :'Integer',
        :'latest_filling_time' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'parent_id']
        self.parent_id = attributes[:'parent_id']
      end
      
      if attributes[:'client_id']
        self.client_id = attributes[:'client_id']
      end
      
      if attributes[:'variable_id']
        self.variable_id = attributes[:'variable_id']
      end
      
      if attributes[:'default_unit_id']
        self.default_unit_id = attributes[:'default_unit_id']
      end
      
      if attributes[:'minimum_allowed_value']
        self.minimum_allowed_value = attributes[:'minimum_allowed_value']
      end
      
      if attributes[:'maximum_allowed_value']
        self.maximum_allowed_value = attributes[:'maximum_allowed_value']
      end
      
      if attributes[:'filling_value']
        self.filling_value = attributes[:'filling_value']
      end
      
      if attributes[:'join_with']
        self.join_with = attributes[:'join_with']
      end
      
      if attributes[:'onset_delay']
        self.onset_delay = attributes[:'onset_delay']
      end
      
      if attributes[:'duration_of_action']
        self.duration_of_action = attributes[:'duration_of_action']
      end
      
      if attributes[:'variable_category_id']
        self.variable_category_id = attributes[:'variable_category_id']
      end
      
      if attributes[:'updated']
        self.updated = attributes[:'updated']
      end
      
      if attributes[:'public']
        self.public = attributes[:'public']
      end
      
      if attributes[:'cause_only']
        self.cause_only = attributes[:'cause_only']
      end
      
      if attributes[:'filling_type']
        self.filling_type = attributes[:'filling_type']
      end
      
      if attributes[:'number_of_measurements']
        self.number_of_measurements = attributes[:'number_of_measurements']
      end
      
      if attributes[:'number_of_processed_measurements']
        self.number_of_processed_measurements = attributes[:'number_of_processed_measurements']
      end
      
      if attributes[:'measurements_at_last_analysis']
        self.measurements_at_last_analysis = attributes[:'measurements_at_last_analysis']
      end
      
      if attributes[:'last_unit_id']
        self.last_unit_id = attributes[:'last_unit_id']
      end
      
      if attributes[:'last_original_unit_id']
        self.last_original_unit_id = attributes[:'last_original_unit_id']
      end
      
      if attributes[:'last_value']
        self.last_value = attributes[:'last_value']
      end
      
      if attributes[:'last_original_value']
        self.last_original_value = attributes[:'last_original_value']
      end
      
      if attributes[:'last_source_id']
        self.last_source_id = attributes[:'last_source_id']
      end
      
      if attributes[:'number_of_correlations']
        self.number_of_correlations = attributes[:'number_of_correlations']
      end
      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'error_message']
        self.error_message = attributes[:'error_message']
      end
      
      if attributes[:'last_successful_update_time']
        self.last_successful_update_time = attributes[:'last_successful_update_time']
      end
      
      if attributes[:'standard_deviation']
        self.standard_deviation = attributes[:'standard_deviation']
      end
      
      if attributes[:'variance']
        self.variance = attributes[:'variance']
      end
      
      if attributes[:'minimum_recorded_daily_value']
        self.minimum_recorded_daily_value = attributes[:'minimum_recorded_daily_value']
      end
      
      if attributes[:'maximum_recorded_daily_value']
        self.maximum_recorded_daily_value = attributes[:'maximum_recorded_daily_value']
      end
      
      if attributes[:'mean']
        self.mean = attributes[:'mean']
      end
      
      if attributes[:'median']
        self.median = attributes[:'median']
      end
      
      if attributes[:'most_common_unit_id']
        self.most_common_unit_id = attributes[:'most_common_unit_id']
      end
      
      if attributes[:'most_common_value']
        self.most_common_value = attributes[:'most_common_value']
      end
      
      if attributes[:'number_of_unique_daily_values']
        self.number_of_unique_daily_values = attributes[:'number_of_unique_daily_values']
      end
      
      if attributes[:'number_of_changes']
        self.number_of_changes = attributes[:'number_of_changes']
      end
      
      if attributes[:'skewness']
        self.skewness = attributes[:'skewness']
      end
      
      if attributes[:'kurtosis']
        self.kurtosis = attributes[:'kurtosis']
      end
      
      if attributes[:'latitude']
        self.latitude = attributes[:'latitude']
      end
      
      if attributes[:'longitude']
        self.longitude = attributes[:'longitude']
      end
      
      if attributes[:'location']
        self.location = attributes[:'location']
      end
      
      if attributes[:'created_at']
        self.created_at = attributes[:'created_at']
      end
      
      if attributes[:'updated_at']
        self.updated_at = attributes[:'updated_at']
      end
      
      if attributes[:'outcome']
        self.outcome = attributes[:'outcome']
      end
      
      if attributes[:'sources']
        self.sources = attributes[:'sources']
      end
      
      if attributes[:'earliest_source_time']
        self.earliest_source_time = attributes[:'earliest_source_time']
      end
      
      if attributes[:'latest_source_time']
        self.latest_source_time = attributes[:'latest_source_time']
      end
      
      if attributes[:'earliest_measurement_time']
        self.earliest_measurement_time = attributes[:'earliest_measurement_time']
      end
      
      if attributes[:'latest_measurement_time']
        self.latest_measurement_time = attributes[:'latest_measurement_time']
      end
      
      if attributes[:'earliest_filling_time']
        self.earliest_filling_time = attributes[:'earliest_filling_time']
      end
      
      if attributes[:'latest_filling_time']
        self.latest_filling_time = attributes[:'latest_filling_time']
      end
      
    end

  end
end
