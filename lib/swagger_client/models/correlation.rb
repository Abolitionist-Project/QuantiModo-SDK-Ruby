module SwaggerClient
  # 
  class Correlation < BaseObject
    attr_accessor :correlation_coefficient, :cause, :original_cause, :effect, :original_effect, :onset_delay, :duration_of_action, :number_of_pairs, :effect_size, :statistical_significance, :timestamp, :reverse_correlation, :causality_factor, :cause_category, :effect_category, :value_predicting_high_outcome, :value_predicting_low_outcome, :optimal_pearson_product, :average_vote, :user_vote, :cause_unit, :cause_unit_id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Pearson correlation coefficient between cause and effect measurements
        :'correlation_coefficient' => :'correlationCoefficient',
        
        # ORIGINAL variable name of the cause variable for which the user desires correlations.
        :'cause' => :'cause',
        
        # original name of the cause.
        :'original_cause' => :'originalCause',
        
        # ORIGINAL variable name of the effect variable for which the user desires correlations.
        :'effect' => :'effect',
        
        # effect variable original name.
        :'original_effect' => :'originalEffect',
        
        # User estimated or default time after cause measurement before a perceivable effect is observed
        :'onset_delay' => :'onsetDelay',
        
        # Time over which the cause is expected to produce a perceivable effect following the onset delay
        :'duration_of_action' => :'durationOfAction',
        
        # Number of points that went into the correlation calculation
        :'number_of_pairs' => :'numberOfPairs',
        
        # Magnitude of the effects of a cause indicating whether it&#39;s practically meaningful.
        :'effect_size' => :'effectSize',
        
        # A function of the effect size and sample size
        :'statistical_significance' => :'statisticalSignificance',
        
        # Time at which correlation was calculated
        :'timestamp' => :'timestamp',
        
        # Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation.
        :'reverse_correlation' => :'reverseCorrelation',
        
        # 
        :'causality_factor' => :'causalityFactor',
        
        # Variable category of the cause variable.
        :'cause_category' => :'causeCategory',
        
        # Variable category of the effect variable.
        :'effect_category' => :'effectCategory',
        
        # cause value that predicts an above average effect value (in default unit for cause variable)
        :'value_predicting_high_outcome' => :'valuePredictingHighOutcome',
        
        # cause value that predicts a below average effect value (in default unit for cause variable)
        :'value_predicting_low_outcome' => :'valuePredictingLowOutcome',
        
        # Optimal Pearson Product
        :'optimal_pearson_product' => :'optimalPearsonProduct',
        
        # Average Vote
        :'average_vote' => :'averageVote',
        
        # User Vote
        :'user_vote' => :'userVote',
        
        # Unit of Cause
        :'cause_unit' => :'causeUnit',
        
        # Unit Id of Cause
        :'cause_unit_id' => :'causeUnitId'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'correlation_coefficient' => :'Float',
        :'cause' => :'String',
        :'original_cause' => :'String',
        :'effect' => :'String',
        :'original_effect' => :'String',
        :'onset_delay' => :'Float',
        :'duration_of_action' => :'Float',
        :'number_of_pairs' => :'Float',
        :'effect_size' => :'String',
        :'statistical_significance' => :'String',
        :'timestamp' => :'Float',
        :'reverse_correlation' => :'Float',
        :'causality_factor' => :'Float',
        :'cause_category' => :'String',
        :'effect_category' => :'String',
        :'value_predicting_high_outcome' => :'Float',
        :'value_predicting_low_outcome' => :'Float',
        :'optimal_pearson_product' => :'Float',
        :'average_vote' => :'Float',
        :'user_vote' => :'Float',
        :'cause_unit' => :'String',
        :'cause_unit_id' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'correlationCoefficient']
        self.correlation_coefficient = attributes[:'correlationCoefficient']
      end
      
      if attributes[:'cause']
        self.cause = attributes[:'cause']
      end
      
      if attributes[:'originalCause']
        self.original_cause = attributes[:'originalCause']
      end
      
      if attributes[:'effect']
        self.effect = attributes[:'effect']
      end
      
      if attributes[:'originalEffect']
        self.original_effect = attributes[:'originalEffect']
      end
      
      if attributes[:'onsetDelay']
        self.onset_delay = attributes[:'onsetDelay']
      end
      
      if attributes[:'durationOfAction']
        self.duration_of_action = attributes[:'durationOfAction']
      end
      
      if attributes[:'numberOfPairs']
        self.number_of_pairs = attributes[:'numberOfPairs']
      end
      
      if attributes[:'effectSize']
        self.effect_size = attributes[:'effectSize']
      end
      
      if attributes[:'statisticalSignificance']
        self.statistical_significance = attributes[:'statisticalSignificance']
      end
      
      if attributes[:'timestamp']
        self.timestamp = attributes[:'timestamp']
      end
      
      if attributes[:'reverseCorrelation']
        self.reverse_correlation = attributes[:'reverseCorrelation']
      end
      
      if attributes[:'causalityFactor']
        self.causality_factor = attributes[:'causalityFactor']
      end
      
      if attributes[:'causeCategory']
        self.cause_category = attributes[:'causeCategory']
      end
      
      if attributes[:'effectCategory']
        self.effect_category = attributes[:'effectCategory']
      end
      
      if attributes[:'valuePredictingHighOutcome']
        self.value_predicting_high_outcome = attributes[:'valuePredictingHighOutcome']
      end
      
      if attributes[:'valuePredictingLowOutcome']
        self.value_predicting_low_outcome = attributes[:'valuePredictingLowOutcome']
      end
      
      if attributes[:'optimalPearsonProduct']
        self.optimal_pearson_product = attributes[:'optimalPearsonProduct']
      end
      
      if attributes[:'averageVote']
        self.average_vote = attributes[:'averageVote']
      end
      
      if attributes[:'userVote']
        self.user_vote = attributes[:'userVote']
      end
      
      if attributes[:'causeUnit']
        self.cause_unit = attributes[:'causeUnit']
      end
      
      if attributes[:'causeUnitId']
        self.cause_unit_id = attributes[:'causeUnitId']
      end
      
    end

  end
end
