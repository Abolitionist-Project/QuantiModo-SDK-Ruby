
class User
  attr_accessor :id, :wp_id, :display_name, :login_name, :email, :token, :administrator
  # :internal => :external
  def self.attribute_map
    {
      :id => :'id',
      :wp_id => :'wpId',
      :display_name => :'displayName',
      :login_name => :'loginName',
      :email => :'email',
      :token => :'token',
      :administrator => :'administrator'
      
    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    
    if self.class.attribute_map[:"id"]
      @id = attributes["id"]
    end
    
    if self.class.attribute_map[:"wp_id"]
      @wp_id = attributes["wpId"]
    end
    
    if self.class.attribute_map[:"display_name"]
      @display_name = attributes["displayName"]
    end
    
    if self.class.attribute_map[:"login_name"]
      @login_name = attributes["loginName"]
    end
    
    if self.class.attribute_map[:"email"]
      @email = attributes["email"]
    end
    
    if self.class.attribute_map[:"token"]
      @token = attributes["token"]
    end
    
    if self.class.attribute_map[:"administrator"]
      @administrator = attributes["administrator"]
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
