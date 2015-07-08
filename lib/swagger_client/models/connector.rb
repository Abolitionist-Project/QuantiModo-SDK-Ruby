module SwaggerClient
  # 
  class Connector < BaseObject
    attr_accessor :id, :name, :display_name, :image, :get_it_url, :connected, :connect_instructions, :last_update, :latest_data, :no_data_yet
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Connector ID number
        :'id' => :'id',
        
        # Connector lowercase system name
        :'name' => :'name',
        
        # Connector pretty display name
        :'display_name' => :'displayName',
        
        # URL to the image of the connector logo
        :'image' => :'image',
        
        # URL to a site where one can get this device or application
        :'get_it_url' => :'getItUrl',
        
        # True if the authenticated user has this connector enabled
        :'connected' => :'connected',
        
        # URL and parameters used when connecting to a service
        :'connect_instructions' => :'connectInstructions',
        
        # Epoch timestamp of last sync
        :'last_update' => :'lastUpdate',
        
        # Number of measurements obtained during latest update
        :'latest_data' => :'latestData',
        
        # True if user has no measurements for this connector
        :'no_data_yet' => :'noDataYet'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'int',
        :'name' => :'string',
        :'display_name' => :'string',
        :'image' => :'string',
        :'get_it_url' => :'string',
        :'connected' => :'string',
        :'connect_instructions' => :'string',
        :'last_update' => :'int',
        :'latest_data' => :'int',
        :'no_data_yet' => :'boolean'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        @id = attributes[:'id']
      end
      
      if attributes[:'name']
        @name = attributes[:'name']
      end
      
      if attributes[:'displayName']
        @display_name = attributes[:'displayName']
      end
      
      if attributes[:'image']
        @image = attributes[:'image']
      end
      
      if attributes[:'getItUrl']
        @get_it_url = attributes[:'getItUrl']
      end
      
      if attributes[:'connected']
        @connected = attributes[:'connected']
      end
      
      if attributes[:'connectInstructions']
        @connect_instructions = attributes[:'connectInstructions']
      end
      
      if attributes[:'lastUpdate']
        @last_update = attributes[:'lastUpdate']
      end
      
      if attributes[:'latestData']
        @latest_data = attributes[:'latestData']
      end
      
      if attributes[:'noDataYet']
        @no_data_yet = attributes[:'noDataYet']
      end
      
    end
  end
end
