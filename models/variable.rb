
class Variable
  attr_accessor :name, :original_name, :category, :unit, :sources, :minimum_value, :maximum_value, :combination_operation, :filling_value
  # :internal => :external
  def self.attribute_map
    {
      :name => :'name',
      :original_name => :'originalName',
      :category => :'category',
      :unit => :'unit',
      :sources => :'sources',
      :minimum_value => :'minimumValue',
      :maximum_value => :'maximumValue',
      :combination_operation => :'combinationOperation',
      :filling_value => :'fillingValue'
      
    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    
    if self.class.attribute_map[:"name"]
      @name = attributes["name"]
    end
    
    if self.class.attribute_map[:"original_name"]
      @original_name = attributes["originalName"]
    end
    
    if self.class.attribute_map[:"category"]
      @category = attributes["category"]
    end
    
    if self.class.attribute_map[:"unit"]
      @unit = attributes["unit"]
    end
    
    if self.class.attribute_map[:"sources"]
      @sources = attributes["sources"]
    end
    
    if self.class.attribute_map[:"minimum_value"]
      @minimum_value = attributes["minimumValue"]
    end
    
    if self.class.attribute_map[:"maximum_value"]
      @maximum_value = attributes["maximumValue"]
    end
    
    if self.class.attribute_map[:"combination_operation"]
      @combination_operation = attributes["combinationOperation"]
    end
    
    if self.class.attribute_map[:"filling_value"]
      @filling_value = attributes["fillingValue"]
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
