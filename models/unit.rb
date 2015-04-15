
class Unit
  attr_accessor :name, :abbreviated_name, :category, :minimum, :maximum, :conversion_steps
  # :internal => :external
  def self.attribute_map
    {
      :name => :'name',
      :abbreviated_name => :'abbreviatedName',
      :category => :'category',
      :minimum => :'minimum',
      :maximum => :'maximum',
      :conversion_steps => :'conversionSteps'
      
    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    
    if self.class.attribute_map[:"name"]
      @name = attributes["name"]
    end
    
    if self.class.attribute_map[:"abbreviated_name"]
      @abbreviated_name = attributes["abbreviatedName"]
    end
    
    if self.class.attribute_map[:"category"]
      @category = attributes["category"]
    end
    
    if self.class.attribute_map[:"minimum"]
      @minimum = attributes["minimum"]
    end
    
    if self.class.attribute_map[:"maximum"]
      @maximum = attributes["maximum"]
    end
    
    if self.class.attribute_map[:"conversion_steps"]
      if (value = attributes["conversionSteps"]).is_a?(Array)
        @conversion_steps = value.map{ |v| ConversionStep.new(v) }
      end
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
