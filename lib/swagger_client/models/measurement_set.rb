module SwaggerClient
  # 
  class MeasurementSet < BaseObject
    attr_accessor :measurements, :name, :source, :category, :combination_operation, :unit
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Array of timestamps, values, and optional notes
        :'measurements' => :'measurements',
        
        # ORIGINAL name of the variable for which we are creating the measurement records
        :'name' => :'name',
        
        # Name of the application or device used to record the measurement values
        :'source' => :'source',
        
        # Variable category name
        :'category' => :'category',
        
        # Way to aggregate measurements over time. Options are \&quot;MEAN\&quot; or \&quot;SUM\&quot;
        :'combination_operation' => :'combinationOperation',
        
        # Unit of measurement
        :'unit' => :'unit'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'measurements' => :'array[ValueObject]',
        :'name' => :'string',
        :'source' => :'string',
        :'category' => :'string',
        :'combination_operation' => :'string',
        :'unit' => :'string'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'measurements']
        if (value = attributes[:'measurements']).is_a?(Array)
          @measurements = value
        end
      end
      
      if attributes[:'name']
        @name = attributes[:'name']
      end
      
      if attributes[:'source']
        @source = attributes[:'source']
      end
      
      if attributes[:'category']
        @category = attributes[:'category']
      end
      
      if attributes[:'combinationOperation']
        @combination_operation = attributes[:'combinationOperation']
      end
      
      if attributes[:'unit']
        @unit = attributes[:'unit']
      end
      
    end
  end
end
