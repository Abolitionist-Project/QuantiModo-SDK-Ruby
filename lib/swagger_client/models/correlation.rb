module SwaggerClient
  # 
  class Correlation < BaseObject
    attr_accessor :id, :timestamp, :user_id, :correlation, :cause_id, :effect_id, :onset_delay, :duration_of_action, :number_of_pairs, :value_predicting_high_outcome, :value_predicting_low_outcome, :optimal_pearson_product, :vote, :statistical_significance, :cause_unit, :cause_unit_id, :cause_changes, :effect_changes, :qm_score, :error, :created_at, :updated_at, :reverse_pearson_correlation_coefficient, :predictive_pearson_correlation_coefficient
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # id
        :'id' => :'id',
        
        # Time at which correlation was calculated
        :'timestamp' => :'timestamp',
        
        # ID of user that owns this correlation
        :'user_id' => :'user_id',
        
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
        
        # QM Score
        :'qm_score' => :'qm_score',
        
        # error
        :'error' => :'error',
        
        # When the record was first created. Use ISO 8601 datetime format
        :'created_at' => :'created_at',
        
        # When the record in the database was last updated. Use ISO 8601 datetime format
        :'updated_at' => :'updated_at',
        
        # Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation
        :'reverse_pearson_correlation_coefficient' => :'reverse_pearson_correlation_coefficient',
        
        # Predictive Pearson Correlation Coefficient
        :'predictive_pearson_correlation_coefficient' => :'predictive_pearson_correlation_coefficient'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'timestamp' => :'Integer',
        :'user_id' => :'Integer',
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
        :'statistical_significance' => :'Float',
        :'cause_unit' => :'String',
        :'cause_unit_id' => :'Integer',
        :'cause_changes' => :'Integer',
        :'effect_changes' => :'Integer',
        :'qm_score' => :'Float',
        :'error' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'reverse_pearson_correlation_coefficient' => :'Float',
        :'predictive_pearson_correlation_coefficient' => :'Float'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'timestamp']
        self.timestamp = attributes[:'timestamp']
      end
      
      if attributes[:'user_id']
        self.user_id = attributes[:'user_id']
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
      
      if attributes[:'qm_score']
        self.qm_score = attributes[:'qm_score']
      end
      
      if attributes[:'error']
        self.error = attributes[:'error']
      end
      
      if attributes[:'created_at']
        self.created_at = attributes[:'created_at']
      end
      
      if attributes[:'updated_at']
        self.updated_at = attributes[:'updated_at']
      end
      
      if attributes[:'reverse_pearson_correlation_coefficient']
        self.reverse_pearson_correlation_coefficient = attributes[:'reverse_pearson_correlation_coefficient']
      end
      
      if attributes[:'predictive_pearson_correlation_coefficient']
        self.predictive_pearson_correlation_coefficient = attributes[:'predictive_pearson_correlation_coefficient']
      end
      
    end

  end
end
