module SwaggerClient
  # 
  class Connector < BaseObject
    attr_accessor :id, :name, :display_name, :image, :get_it_url, :connected, :connect_instructions, :last_update, :total_measurements_in_last_update, :no_data_yet
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
        :'total_measurements_in_last_update' => :'totalMeasurementsInLastUpdate',
        
        # True if user has no measurements for this connector
        :'no_data_yet' => :'noDataYet'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'display_name' => :'String',
        :'image' => :'String',
        :'get_it_url' => :'String',
        :'connected' => :'String',
        :'connect_instructions' => :'String',
        :'last_update' => :'Integer',
        :'total_measurements_in_last_update' => :'Integer',
        :'no_data_yet' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'displayName']
        self.display_name = attributes[:'displayName']
      end
      
      if attributes[:'image']
        self.image = attributes[:'image']
      end
      
      if attributes[:'getItUrl']
        self.get_it_url = attributes[:'getItUrl']
      end
      
      if attributes[:'connected']
        self.connected = attributes[:'connected']
      end
      
      if attributes[:'connectInstructions']
        self.connect_instructions = attributes[:'connectInstructions']
      end
      
      if attributes[:'lastUpdate']
        self.last_update = attributes[:'lastUpdate']
      end
      
      if attributes[:'totalMeasurementsInLastUpdate']
        self.total_measurements_in_last_update = attributes[:'totalMeasurementsInLastUpdate']
      end
      
      if attributes[:'noDataYet']
        self.no_data_yet = attributes[:'noDataYet']
      end
      
    end

  end
end
