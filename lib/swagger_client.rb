# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/base_object'
require 'swagger_client/models/common_response'
require 'swagger_client/models/human_time'
require 'swagger_client/models/connector_instruction'
require 'swagger_client/models/connector'
require 'swagger_client/models/connector_info'
require 'swagger_client/models/connector_info_history_item'
require 'swagger_client/models/conversion_step'
require 'swagger_client/models/correlation'
require 'swagger_client/models/json_error_response'
require 'swagger_client/models/measurement_set'
require 'swagger_client/models/measurement'
require 'swagger_client/models/measurement_range'
require 'swagger_client/models/measurement_source'
require 'swagger_client/models/pairs'
require 'swagger_client/models/permission'
require 'swagger_client/models/post_correlation'
require 'swagger_client/models/unit'
require 'swagger_client/models/unit_category'
require 'swagger_client/models/user'
require 'swagger_client/models/user_token_request'
require 'swagger_client/models/user_token_successful_response'
require 'swagger_client/models/user_token_failed_response'
require 'swagger_client/models/user_token_request_inner_user_field'
require 'swagger_client/models/user_token_successful_response_inner_user_field'
require 'swagger_client/models/value_object'
require 'swagger_client/models/variable'
require 'swagger_client/models/variable_category'
require 'swagger_client/models/user_variables'
require 'swagger_client/models/variable_new'
require 'swagger_client/models/variables_new'

# APIs
require 'swagger_client/api/connectors_api'
require 'swagger_client/api/oauth_api'
require 'swagger_client/api/variables_api'
require 'swagger_client/api/user_api'
require 'swagger_client/api/measurements_api'
require 'swagger_client/api/correlations_api'
require 'swagger_client/api/organizations_api'
require 'swagger_client/api/votes_api'
require 'swagger_client/api/pairs_api'
require 'swagger_client/api/units_api'

module SwaggerClient
  class << self
    # Configure sdk using block.
    # SwaggerClient.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.instance
      else
        Configuration.instance
      end
    end
  end
end
