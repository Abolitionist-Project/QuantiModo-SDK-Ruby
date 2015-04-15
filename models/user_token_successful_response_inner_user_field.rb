
class UserTokenSuccessfulResponseInnerUserField
  attr_accessor :_id, :access_token
  # :internal => :external
  def self.attribute_map
    {
      :_id => :'_id',
      :access_token => :'access_token'
      
    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    
    if self.class.attribute_map[:"_id"]
      @_id = attributes["_id"]
    end
    
    if self.class.attribute_map[:"access_token"]
      @access_token = attributes["access_token"]
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
