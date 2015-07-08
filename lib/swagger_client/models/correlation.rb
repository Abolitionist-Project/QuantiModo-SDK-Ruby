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
        :'correlation_coefficient' => :'number',
        :'cause' => :'string',
        :'effect' => :'string',
        :'onset_delay' => :'double',
        :'duration_of_action' => :'number',
        :'number_of_pairs' => :'number',
        :'effect_size' => :'string',
        :'statistical_significance' => :'string',
        :'timestamp' => :'number',
        :'reverse_correlation' => :'number',
        :'causality_factor' => :'number',
        :'cause_category' => :'string',
        :'effect_category' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'correlationCoefficient']
        @correlation_coefficient = attributes[:'correlationCoefficient']
      end
      
      if attributes[:'cause']
        @cause = attributes[:'cause']
      end
      
      if attributes[:'effect']
        @effect = attributes[:'effect']
      end
      
      if attributes[:'onsetDelay']
        @onset_delay = attributes[:'onsetDelay']
      end
      
      if attributes[:'durationOfAction']
        @duration_of_action = attributes[:'durationOfAction']
      end
      
      if attributes[:'numberOfPairs']
        @number_of_pairs = attributes[:'numberOfPairs']
      end
      
      if attributes[:'effectSize']
        @effect_size = attributes[:'effectSize']
      end
      
      if attributes[:'statisticalSignificance']
        @statistical_significance = attributes[:'statisticalSignificance']
      end
      
      if attributes[:'timestamp']
        @timestamp = attributes[:'timestamp']
      end
      
      if attributes[:'reverseCorrelation']
        @reverse_correlation = attributes[:'reverseCorrelation']
      end
      
      if attributes[:'causalityFactor']
        @causality_factor = attributes[:'causalityFactor']
      end
      
      if attributes[:'causeCategory']
        @cause_category = attributes[:'causeCategory']
      end
      
      if attributes[:'effectCategory']
        @effect_category = attributes[:'effectCategory']
      end
      
    end
  end
end
