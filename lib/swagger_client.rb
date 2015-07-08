# Swagger common files
require 'swagger_client/monkey'
require 'swagger_client/swagger'
require 'swagger_client/swagger/configuration'
require 'swagger_client/swagger/request'
require 'swagger_client/swagger/response'
require 'swagger_client/swagger/version'

# Models
require 'swagger_client/models/base_object'
require 'swagger_client/models/connector'
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
require 'swagger_client/models/variable_user_settings'
require 'swagger_client/models/variable_new'
require 'swagger_client/models/variables_new'

# APIs
require 'swagger_client/api/connectors_api'
require 'swagger_client/api/variables_api'
require 'swagger_client/api/oauth_api'
require 'swagger_client/api/user_api'
require 'swagger_client/api/measurements_api'
require 'swagger_client/api/correlations_api'
require 'swagger_client/api/connect_api'
require 'swagger_client/api/organizations_api'
require 'swagger_client/api/pairs_api'
require 'swagger_client/api/units_api'

module SwaggerClient
  # Initialize the default configuration
  Swagger.configuration ||= Swagger::Configuration.new
end
