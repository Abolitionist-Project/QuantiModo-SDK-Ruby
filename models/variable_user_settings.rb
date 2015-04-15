
class VariableUserSettings
  attr_accessor :user, :variable, :duration_of_action, :filling_value, :join_with, :maximum_value, :minimum_value, :name, :onset_delay, :unit
  # :internal => :external
  def self.attribute_map
    {
      :user => :'user',
      :variable => :'variable',
      :duration_of_action => :'durationOfAction',
      :filling_value => :'fillingValue',
      :join_with => :'joinWith',
      :maximum_value => :'maximumValue',
      :minimum_value => :'minimumValue',
      :name => :'name',
      :onset_delay => :'onsetDelay',
      :unit => :'unit'
      
    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    
    if self.class.attribute_map[:"user"]
      @user = attributes["user"]
    end
    
    if self.class.attribute_map[:"variable"]
      @variable = attributes["variable"]
    end
    
    if self.class.attribute_map[:"duration_of_action"]
      @duration_of_action = attributes["durationOfAction"]
    end
    
    if self.class.attribute_map[:"filling_value"]
      @filling_value = attributes["fillingValue"]
    end
    
    if self.class.attribute_map[:"join_with"]
      @join_with = attributes["joinWith"]
    end
    
    if self.class.attribute_map[:"maximum_value"]
      @maximum_value = attributes["maximumValue"]
    end
    
    if self.class.attribute_map[:"minimum_value"]
      @minimum_value = attributes["minimumValue"]
    end
    
    if self.class.attribute_map[:"name"]
      @name = attributes["name"]
    end
    
    if self.class.attribute_map[:"onset_delay"]
      @onset_delay = attributes["onsetDelay"]
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
