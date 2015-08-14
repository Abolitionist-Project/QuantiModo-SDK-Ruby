module SwaggerClient
  # 
  class Correlation < BaseObject
    attr_accessor :correlation_coefficient, :cause, :effect, :onset_delay, :duration_of_action, :number_of_pairs, :effect_size, :statistical_significance, :timestamp, :reverse_correlation, :causality_factor, :cause_category, :effect_category
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Pearson correlation coefficient between cause and effect measurements
        :'correlation_coefficient' => :'correlationCoefficient',
        
        # ORIGINAL variable name of the cause variable for which the user desires correlations.
        :'cause' => :'cause',
        
        # ORIGINAL variable name of the effect variable for which the user desires correlations.
        :'effect' => :'effect',
        
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
        :'effect_category' => :'effectCategory'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'correlation_coefficient' => :'Float',
        :'cause' => :'String',
        :'effect' => :'String',
        :'onset_delay' => :'Float',
        :'duration_of_action' => :'Float',
        :'number_of_pairs' => :'Float',
        :'effect_size' => :'String',
        :'statistical_significance' => :'String',
        :'timestamp' => :'Float',
        :'reverse_correlation' => :'Float',
        :'causality_factor' => :'Float',
        :'cause_category' => :'String',
        :'effect_category' => :'String'
        
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
      
      if attributes[:'effect']
        self.effect = attributes[:'effect']
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
      
    end

  end
end
