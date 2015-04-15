
class MeasurementRange
  attr_accessor :lower_limit, :upper_limit
  # :internal => :external
  def self.attribute_map
    {
      :lower_limit => :'lowerLimit',
      :upper_limit => :'upperLimit'
      
    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    
    if self.class.attribute_map[:"lower_limit"]
      @lower_limit = attributes["lowerLimit"]
    end
    
    if self.class.attribute_map[:"upper_limit"]
      @upper_limit = attributes["upperLimit"]
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
