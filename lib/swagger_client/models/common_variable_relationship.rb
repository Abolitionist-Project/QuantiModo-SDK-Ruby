module SwaggerClient
  # 
  class CommonVariableRelationship < BaseObject
    attr_accessor :id, :confidence_level, :confidence_score, :direction, :duration_of_action, :error_message, :onset_delay, :outcome_variable_id, :predictor_variable_id, :predictor_unit_id, :sinn_rank, :strength_score, :strength_level, :up_votes, :down_votes, :value_predicting_high_outcome, :value_predicting_low_outcome, :number_of_users, :data_source
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # id
        :'id' => :'id',
        
        # Our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors
        :'confidence_level' => :'confidence_level',
        
        # A quantitative representation of our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors
        :'confidence_score' => :'confidence_score',
        
        # Direction is positive if higher predictor values generally precede higher outcome values. Direction is negative if higher predictor values generally precede lower outcome values.
        :'direction' => :'direction',
        
        # duration_of_action
        :'duration_of_action' => :'duration_of_action',
        
        # error_message
        :'error_message' => :'error_message',
        
        # User estimated (or default number of seconds) after cause measurement before a perceivable effect is observed
        :'onset_delay' => :'onset_delay',
        
        # Variable ID for the outcome variable
        :'outcome_variable_id' => :'outcome_variable_id',
        
        # Variable ID for the predictor variable
        :'predictor_variable_id' => :'predictor_variable_id',
        
        # ID for default unit of the predictor variable
        :'predictor_unit_id' => :'predictor_unit_id',
        
        # A value representative of the relevance of this predictor relative to other predictors of this outcome.  Usually used for relevancy sorting.
        :'sinn_rank' => :'sinn_rank',
        
        # A value represented to the size of the effect which the predictor appears to have on the outcome.
        :'strength_score' => :'strength_score',
        
        # Can be weak, medium, or strong based on the size of the effect which the predictor appears to have on the outcome relative to other variable relationship strength scores.
        :'strength_level' => :'strength_level',
        
        # Number of users who feel that there is a plausible causal relationship between the predictor and outcome variables.
        :'up_votes' => :'up_votes',
        
        # Number of users who do not feel that there is a plausible causal relationship between the predictor and outcome variables.
        :'down_votes' => :'down_votes',
        
        # Value for the predictor variable (in it&#39;s default unit) which typically precedes an above average outcome value
        :'value_predicting_high_outcome' => :'value_predicting_high_outcome',
        
        # Value for the predictor variable (in it&#39;s default unit) which typically precedes a below average outcome value
        :'value_predicting_low_outcome' => :'value_predicting_low_outcome',
        
        # Number of users whose data was aggregated to obtain this relationship
        :'number_of_users' => :'number_of_users',
        
        # Source of data for this common variable relationship
        :'data_source' => :'data_source'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'confidence_level' => :'String',
        :'confidence_score' => :'Float',
        :'direction' => :'String',
        :'duration_of_action' => :'Integer',
        :'error_message' => :'String',
        :'onset_delay' => :'Integer',
        :'outcome_variable_id' => :'Integer',
        :'predictor_variable_id' => :'Integer',
        :'predictor_unit_id' => :'Integer',
        :'sinn_rank' => :'Float',
        :'strength_score' => :'Float',
        :'strength_level' => :'String',
        :'up_votes' => :'Integer',
        :'down_votes' => :'Integer',
        :'value_predicting_high_outcome' => :'Float',
        :'value_predicting_low_outcome' => :'Float',
        :'number_of_users' => :'Integer',
        :'data_source' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'confidence_level']
        self.confidence_level = attributes[:'confidence_level']
      end
      
      if attributes[:'confidence_score']
        self.confidence_score = attributes[:'confidence_score']
      end
      
      if attributes[:'direction']
        self.direction = attributes[:'direction']
      end
      
      if attributes[:'duration_of_action']
        self.duration_of_action = attributes[:'duration_of_action']
      end
      
      if attributes[:'error_message']
        self.error_message = attributes[:'error_message']
      end
      
      if attributes[:'onset_delay']
        self.onset_delay = attributes[:'onset_delay']
      end
      
      if attributes[:'outcome_variable_id']
        self.outcome_variable_id = attributes[:'outcome_variable_id']
      end
      
      if attributes[:'predictor_variable_id']
        self.predictor_variable_id = attributes[:'predictor_variable_id']
      end
      
      if attributes[:'predictor_unit_id']
        self.predictor_unit_id = attributes[:'predictor_unit_id']
      end
      
      if attributes[:'sinn_rank']
        self.sinn_rank = attributes[:'sinn_rank']
      end
      
      if attributes[:'strength_score']
        self.strength_score = attributes[:'strength_score']
      end
      
      if attributes[:'strength_level']
        self.strength_level = attributes[:'strength_level']
      end
      
      if attributes[:'up_votes']
        self.up_votes = attributes[:'up_votes']
      end
      
      if attributes[:'down_votes']
        self.down_votes = attributes[:'down_votes']
      end
      
      if attributes[:'value_predicting_high_outcome']
        self.value_predicting_high_outcome = attributes[:'value_predicting_high_outcome']
      end
      
      if attributes[:'value_predicting_low_outcome']
        self.value_predicting_low_outcome = attributes[:'value_predicting_low_outcome']
      end
      
      if attributes[:'number_of_users']
        self.number_of_users = attributes[:'number_of_users']
      end
      
      if attributes[:'data_source']
        self.data_source = attributes[:'data_source']
      end
      
    end

  end
end
