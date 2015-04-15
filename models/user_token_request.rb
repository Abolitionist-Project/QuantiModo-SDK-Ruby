
class UserTokenRequest
  attr_accessor :user, :organization_access_token
  # :internal => :external
  def self.attribute_map
    {
      :user => :'user',
      :organization_access_token => :'organization_access_token'
      
    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    
    if self.class.attribute_map[:"user"]
      @user = attributes["user"]
    end
    
    if self.class.attribute_map[:"organization_access_token"]
      @organization_access_token = attributes["organization_access_token"]
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
