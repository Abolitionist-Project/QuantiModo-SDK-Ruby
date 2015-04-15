
class UserTokenSuccessfulResponse
  attr_accessor :code, :message, :user
  # :internal => :external
  def self.attribute_map
    {
      :code => :'code',
      :message => :'message',
      :user => :'user'
      
    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    
    if self.class.attribute_map[:"code"]
      @code = attributes["code"]
    end
    
    if self.class.attribute_map[:"message"]
      @message = attributes["message"]
    end
    
    if self.class.attribute_map[:"user"]
      @user = attributes["user"]
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
