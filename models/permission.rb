
class Permission
  attr_accessor :target, :variable_name, :min_timestamp, :max_timestamp, :min_time_of_day, :max_time_of_day, :week
  # :internal => :external
  def self.attribute_map
    {
      :target => :'target',
      :variable_name => :'variableName',
      :min_timestamp => :'min_timestamp',
      :max_timestamp => :'max_timestamp',
      :min_time_of_day => :'min_time_of_day',
      :max_time_of_day => :'max_time_of_day',
      :week => :'week'
      
    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    
    if self.class.attribute_map[:"target"]
      @target = attributes["target"]
    end
    
    if self.class.attribute_map[:"variable_name"]
      @variable_name = attributes["variableName"]
    end
    
    if self.class.attribute_map[:"min_timestamp"]
      @min_timestamp = attributes["min_timestamp"]
    end
    
    if self.class.attribute_map[:"max_timestamp"]
      @max_timestamp = attributes["max_timestamp"]
    end
    
    if self.class.attribute_map[:"min_time_of_day"]
      @min_time_of_day = attributes["min_time_of_day"]
    end
    
    if self.class.attribute_map[:"max_time_of_day"]
      @max_time_of_day = attributes["max_time_of_day"]
    end
    
    if self.class.attribute_map[:"week"]
      @week = attributes["week"]
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
