
class Correlation
  attr_accessor :correlation_coefficient, :cause, :effect, :onset_delay, :duration_of_action, :number_of_pairs, :effect_size, :statistical_significance, :timestamp, :reverse_correlation, :causality_factor, :cause_category, :effect_category
  # :internal => :external
  def self.attribute_map
    {
      :correlation_coefficient => :'correlationCoefficient',
      :cause => :'cause',
      :effect => :'effect',
      :onset_delay => :'onsetDelay',
      :duration_of_action => :'durationOfAction',
      :number_of_pairs => :'numberOfPairs',
      :effect_size => :'effectSize',
      :statistical_significance => :'statisticalSignificance',
      :timestamp => :'timestamp',
      :reverse_correlation => :'reverseCorrelation',
      :causality_factor => :'causalityFactor',
      :cause_category => :'causeCategory',
      :effect_category => :'effectCategory'
      
    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    
    if self.class.attribute_map[:"correlation_coefficient"]
      @correlation_coefficient = attributes["correlationCoefficient"]
    end
    
    if self.class.attribute_map[:"cause"]
      @cause = attributes["cause"]
    end
    
    if self.class.attribute_map[:"effect"]
      @effect = attributes["effect"]
    end
    
    if self.class.attribute_map[:"onset_delay"]
      @onset_delay = attributes["onsetDelay"]
    end
    
    if self.class.attribute_map[:"duration_of_action"]
      @duration_of_action = attributes["durationOfAction"]
    end
    
    if self.class.attribute_map[:"number_of_pairs"]
      @number_of_pairs = attributes["numberOfPairs"]
    end
    
    if self.class.attribute_map[:"effect_size"]
      @effect_size = attributes["effectSize"]
    end
    
    if self.class.attribute_map[:"statistical_significance"]
      @statistical_significance = attributes["statisticalSignificance"]
    end
    
    if self.class.attribute_map[:"timestamp"]
      @timestamp = attributes["timestamp"]
    end
    
    if self.class.attribute_map[:"reverse_correlation"]
      @reverse_correlation = attributes["reverseCorrelation"]
    end
    
    if self.class.attribute_map[:"causality_factor"]
      @causality_factor = attributes["causalityFactor"]
    end
    
    if self.class.attribute_map[:"cause_category"]
      @cause_category = attributes["causeCategory"]
    end
    
    if self.class.attribute_map[:"effect_category"]
      @effect_category = attributes["effectCategory"]
    end
    
  end

  def to_body
    body = {}
    self.class.attribute_map.each_pair do |key, value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end
