
class Connector
  attr_accessor :id, :name, :display_name, :image, :get_it_url, :connected, :connect_instructions, :last_update, :latest_data, :no_data_yet
  # :internal => :external
  def self.attribute_map
    {
      :id => :'id',
      :name => :'name',
      :display_name => :'displayName',
      :image => :'image',
      :get_it_url => :'getItUrl',
      :connected => :'connected',
      :connect_instructions => :'connectInstructions',
      :last_update => :'lastUpdate',
      :latest_data => :'latestData',
      :no_data_yet => :'noDataYet'
      
    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    
    if self.class.attribute_map[:"id"]
      @id = attributes["id"]
    end
    
    if self.class.attribute_map[:"name"]
      @name = attributes["name"]
    end
    
    if self.class.attribute_map[:"display_name"]
      @display_name = attributes["displayName"]
    end
    
    if self.class.attribute_map[:"image"]
      @image = attributes["image"]
    end
    
    if self.class.attribute_map[:"get_it_url"]
      @get_it_url = attributes["getItUrl"]
    end
    
    if self.class.attribute_map[:"connected"]
      @connected = attributes["connected"]
    end
    
    if self.class.attribute_map[:"connect_instructions"]
      @connect_instructions = attributes["connectInstructions"]
    end
    
    if self.class.attribute_map[:"last_update"]
      @last_update = attributes["lastUpdate"]
    end
    
    if self.class.attribute_map[:"latest_data"]
      @latest_data = attributes["latestData"]
    end
    
    if self.class.attribute_map[:"no_data_yet"]
      @no_data_yet = attributes["noDataYet"]
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
