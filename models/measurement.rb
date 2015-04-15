
class Measurement
  attr_accessor :variable, :source, :timestamp, :value, :unit
  # :internal => :external
  def self.attribute_map
    {
      :variable => :'variable',
      :source => :'source',
      :timestamp => :'timestamp',
      :value => :'value',
      :unit => :'unit'
      
    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    
    if self.class.attribute_map[:"variable"]
      @variable = attributes["variable"]
    end
    
    if self.class.attribute_map[:"source"]
      @source = attributes["source"]
    end
    
    if self.class.attribute_map[:"timestamp"]
      @timestamp = attributes["timestamp"]
    end
    
    if self.class.attribute_map[:"value"]
      @value = attributes["value"]
    end
    
    if self.class.attribute_map[:"unit"]
      @unit = attributes["unit"]
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
