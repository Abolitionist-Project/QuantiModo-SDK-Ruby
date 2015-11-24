module SwaggerClient
  # 
  class AggregatedCorrelation < BaseObject
    attr_accessor :id, :correlation, :cause_id, :effect_id, :onset_delay, :duration_of_action, :number_of_pairs, :value_predicting_high_outcome, :value_predicting_low_outcome, :optimal_pearson_product, :vote, :number_of_users, :number_of_correlations, :statistical_significance, :cause_unit, :cause_unit_id, :cause_changes, :effect_changes, :aggregate_qm_score, :created_at, :updated_at, :status, :error_message, :last_successful_update_time, :reverse_pearson_correlation_coefficient, :predictive_pearson_correlation_coefficient, :data_source
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # id
        :'id' => :'id',
        
        # Pearson correlation coefficient between cause and effect measurements
        :'correlation' => :'correlation',
        
        # variable ID of the cause variable for which the user desires correlations
        :'cause_id' => :'cause_id',
        
        # variable ID of the effect variable for which the user desires correlations
        :'effect_id' => :'effect_id',
        
        # User estimated or default time after cause measurement before a perceivable effect is observed
        :'onset_delay' => :'onset_delay',
        
        # Time over which the cause is expected to produce a perceivable effect following the onset delay
        :'duration_of_action' => :'duration_of_action',
        
        # Number of points that went into the correlation calculation
        :'number_of_pairs' => :'number_of_pairs',
        
        # cause value that predicts an above average effect value (in default unit for cause variable)
        :'value_predicting_high_outcome' => :'value_predicting_high_outcome',
        
        # cause value that predicts a below average effect value (in default unit for cause variable)
        :'value_predicting_low_outcome' => :'value_predicting_low_outcome',
        
        # Optimal Pearson Product
        :'optimal_pearson_product' => :'optimal_pearson_product',
        
        # Vote
        :'vote' => :'vote',
        
        # Number of Users by which correlation is aggregated
        :'number_of_users' => :'number_of_users',
        
        # Number of Correlations by which correlation is aggregated
        :'number_of_correlations' => :'number_of_correlations',
        
        # A function of the effect size and sample size
        :'statistical_significance' => :'statistical_significance',
        
        # Unit of the predictor variable
        :'cause_unit' => :'cause_unit',
        
        # Unit ID of the predictor variable
        :'cause_unit_id' => :'cause_unit_id',
        
        # Cause changes
        :'cause_changes' => :'cause_changes',
        
        # Effect changes
        :'effect_changes' => :'effect_changes',
        
        # Aggregated QM Score
        :'aggregate_qm_score' => :'aggregate_qm_score',
        
        # When the record was first created. Use ISO 8601 datetime format
        :'created_at' => :'created_at',
        
        # When the record in the database was last updated. Use ISO 8601 datetime format
        :'updated_at' => :'updated_at',
        
        # Status
        :'status' => :'status',
        
        # Error Message
        :'error_message' => :'error_message',
        
        # Last Successful update time
        :'last_successful_update_time' => :'last_successful_update_time',
        
        # Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation
        :'reverse_pearson_correlation_coefficient' => :'reverse_pearson_correlation_coefficient',
        
        # Predictive Pearson Correlation Coefficient
        :'predictive_pearson_correlation_coefficient' => :'predictive_pearson_correlation_coefficient',
        
        # Source of data for this correlation
        :'data_source' => :'data_source'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'correlation' => :'Float',
        :'cause_id' => :'Integer',
        :'effect_id' => :'Integer',
        :'onset_delay' => :'Integer',
        :'duration_of_action' => :'Integer',
        :'number_of_pairs' => :'Integer',
        :'value_predicting_high_outcome' => :'Float',
        :'value_predicting_low_outcome' => :'Float',
        :'optimal_pearson_product' => :'Float',
        :'vote' => :'Float',
        :'number_of_users' => :'Integer',
        :'number_of_correlations' => :'Integer',
        :'statistical_significance' => :'Float',
        :'cause_unit' => :'String',
        :'cause_unit_id' => :'Integer',
        :'cause_changes' => :'Integer',
        :'effect_changes' => :'Integer',
        :'aggregate_qm_score' => :'Float',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'status' => :'String',
        :'error_message' => :'String',
        :'last_successful_update_time' => :'DateTime',
        :'reverse_pearson_correlation_coefficient' => :'Float',
        :'predictive_pearson_correlation_coefficient' => :'Float',
        :'data_source' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'correlation']
        self.correlation = attributes[:'correlation']
      end
      
      if attributes[:'cause_id']
        self.cause_id = attributes[:'cause_id']
      end
      
      if attributes[:'effect_id']
        self.effect_id = attributes[:'effect_id']
      end
      
      if attributes[:'onset_delay']
        self.onset_delay = attributes[:'onset_delay']
      end
      
      if attributes[:'duration_of_action']
        self.duration_of_action = attributes[:'duration_of_action']
      end
      
      if attributes[:'number_of_pairs']
        self.number_of_pairs = attributes[:'number_of_pairs']
      end
      
      if attributes[:'value_predicting_high_outcome']
        self.value_predicting_high_outcome = attributes[:'value_predicting_high_outcome']
      end
      
      if attributes[:'value_predicting_low_outcome']
        self.value_predicting_low_outcome = attributes[:'value_predicting_low_outcome']
      end
      
      if attributes[:'optimal_pearson_product']
        self.optimal_pearson_product = attributes[:'optimal_pearson_product']
      end
      
      if attributes[:'vote']
        self.vote = attributes[:'vote']
      end
      
      if attributes[:'number_of_users']
        self.number_of_users = attributes[:'number_of_users']
      end
      
      if attributes[:'number_of_correlations']
        self.number_of_correlations = attributes[:'number_of_correlations']
      end
      
      if attributes[:'statistical_significance']
        self.statistical_significance = attributes[:'statistical_significance']
      end
      
      if attributes[:'cause_unit']
        self.cause_unit = attributes[:'cause_unit']
      end
      
      if attributes[:'cause_unit_id']
        self.cause_unit_id = attributes[:'cause_unit_id']
      end
      
      if attributes[:'cause_changes']
        self.cause_changes = attributes[:'cause_changes']
      end
      
      if attributes[:'effect_changes']
        self.effect_changes = attributes[:'effect_changes']
      end
      
      if attributes[:'aggregate_qm_score']
        self.aggregate_qm_score = attributes[:'aggregate_qm_score']
      end
      
      if attributes[:'created_at']
        self.created_at = attributes[:'created_at']
      end
      
      if attributes[:'updated_at']
        self.updated_at = attributes[:'updated_at']
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
      
      if attributes[:'reverse_pearson_correlation_coefficient']
        self.reverse_pearson_correlation_coefficient = attributes[:'reverse_pearson_correlation_coefficient']
      end
      
      if attributes[:'predictive_pearson_correlation_coefficient']
        self.predictive_pearson_correlation_coefficient = attributes[:'predictive_pearson_correlation_coefficient']
      end
      
      if attributes[:'data_source']
        self.data_source = attributes[:'data_source']
      end
      
    end

  end
end
