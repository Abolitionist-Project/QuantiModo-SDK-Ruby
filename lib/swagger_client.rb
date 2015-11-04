# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/base_object'
require 'swagger_client/models/measurement_value'
require 'swagger_client/models/measurement_post'
require 'swagger_client/models/aggregated_correlation'
require 'swagger_client/models/connection'
require 'swagger_client/models/connector'
require 'swagger_client/models/correlation'
require 'swagger_client/models/credential'
require 'swagger_client/models/measurement'
require 'swagger_client/models/measurement_export'
require 'swagger_client/models/source'
require 'swagger_client/models/unit'
require 'swagger_client/models/unit_category'
require 'swagger_client/models/unit_conversion'
require 'swagger_client/models/update'
require 'swagger_client/models/user_variable'
require 'swagger_client/models/variable'
require 'swagger_client/models/variable_category'
require 'swagger_client/models/variable_user_source'
require 'swagger_client/models/vote'
require 'swagger_client/models/inline_response_200'
require 'swagger_client/models/inline_response_200_1'
require 'swagger_client/models/inline_response_200_2'
require 'swagger_client/models/inline_response_200_3'
require 'swagger_client/models/inline_response_200_4'
require 'swagger_client/models/inline_response_200_5'
require 'swagger_client/models/inline_response_200_6'
require 'swagger_client/models/inline_response_200_7'
require 'swagger_client/models/inline_response_200_8'
require 'swagger_client/models/inline_response_200_9'
require 'swagger_client/models/inline_response_200_10'
require 'swagger_client/models/inline_response_200_11'
require 'swagger_client/models/inline_response_200_12'
require 'swagger_client/models/inline_response_200_13'
require 'swagger_client/models/inline_response_200_14'
require 'swagger_client/models/inline_response_200_15'
require 'swagger_client/models/inline_response_200_16'
require 'swagger_client/models/inline_response_200_17'
require 'swagger_client/models/inline_response_200_18'
require 'swagger_client/models/inline_response_200_19'
require 'swagger_client/models/inline_response_200_20'
require 'swagger_client/models/inline_response_200_21'
require 'swagger_client/models/inline_response_200_22'
require 'swagger_client/models/inline_response_200_23'
require 'swagger_client/models/inline_response_200_24'
require 'swagger_client/models/inline_response_200_25'
require 'swagger_client/models/inline_response_200_26'
require 'swagger_client/models/inline_response_200_27'
require 'swagger_client/models/inline_response_200_28'
require 'swagger_client/models/inline_response_200_29'
require 'swagger_client/models/inline_response_200_30'

# APIs
require 'swagger_client/api/variable_user_source_api'
require 'swagger_client/api/measurement_api'
require 'swagger_client/api/variable_api'
require 'swagger_client/api/update_api'
require 'swagger_client/api/aggregated_correlation_api'
require 'swagger_client/api/connector_api'
require 'swagger_client/api/correlation_api'
require 'swagger_client/api/connection_api'
require 'swagger_client/api/unit_api'
require 'swagger_client/api/user_variable_api'
require 'swagger_client/api/source_api'
require 'swagger_client/api/variable_category_api'
require 'swagger_client/api/credential_api'
require 'swagger_client/api/unit_category_api'
require 'swagger_client/api/vote_api'

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
