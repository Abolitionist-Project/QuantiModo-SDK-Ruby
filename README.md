# swagger_client

SwaggerClient - the Ruby gem for the QuantiModo

Welcome to QuantiModo API! QuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications. [Learn about QuantiModo](https://quantimo.do) or contact us at <api@quantimo.do>.         Before you get started, you will need to: * Sign in/Sign up, and add some data at [https://app.quantimo.do/api/v2/account/connectors](https://app.quantimo.do/api/v2/account/connectors) to try out the API for yourself * Create an app to get your client id and secret at [https://app.quantimo.do/api/v2/apps](https://app.quantimo.do/api/v2/apps) * As long as you're signed in, it will use your browser's cookie for authentication.  However, client applications must use OAuth2 tokens to access the API.     ## Application Endpoints These endpoints give you access to all authorized users' data for that application. ### Getting Application Token Make a `POST` request to `/api/v2/oauth/access_token`         * `grant_type` Must be `client_credentials`.         * `clientId` Your application's clientId.         * `client_secret` Your application's client_secret.         * `redirect_uri` Your application's redirect url.                ## Example Queries ### Query Options The standard query options for QuantiModo API are as described in the table below. These are the available query options in QuantiModo API: <table>            <thead>                <tr>                    <th>Parameter</th>                    <th>Description</th>                </tr>            </thead>            <tbody>                <tr>                    <td>limit</td>                    <td>The LIMIT is used to limit the number of results returned.  So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.</td>                </tr>                <tr>                    <td>offset</td>                    <td>Suppose you wanted to show results 11-20. You'd set the    offset to 10 and the limit to 10.</td>                </tr>                <tr>                    <td>sort</td>                    <td>Sort by given field. If the field is prefixed with '-', it    will sort in descending order.</td>                </tr>            </tbody>        </table>         ### Pagination Conventions Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters,         `/v2/variables?limit=20&offset=60`         Generally, you'll be retrieving new or updated user data. To avoid unnecessary API calls, you'll want to store your last refresh time locally.  Initially, it should be set to 0. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append         `?lastUpdated=(ge)&quot2013-01-D01T01:01:01&quot`         to your request.         Also for better pagination, you can get link to the records of first, last, next and previous page from response headers: * `Total-Count` - Total number of results for given query * `Link-First` - Link to get first page records * `Link-Last` - Link to get last page records * `Link-Prev` - Link to get previous records set * `Link-Next` - Link to get next records set         Remember, response header will be only sent when the record set is available. e.g. You will not get a ```Link-Last``` & ```Link-Next``` when you query for the last page.         ### Filter operators support API supports the following operators with filter parameters: <br> **Comparison operators**         Comparison operators allow you to limit results to those greater than, less than, or equal to a specified value for a specified attribute. These operators can be used with strings, numbers, and dates. The following comparison operators are available: * `gt` for `greater than` comparison * `ge` for `greater than or equal` comparison * `lt` for `less than` comparison * `le` for `less than or equal` comparison         They are included in queries using the following format:         `(<operator>)<value>`         For example, in order to filter value which is greater than 21, the following query parameter should be used:         `?value=(gt)21` <br><br> **Equals/In Operators**         It also allows filtering by the exact value of an attribute or by a set of values, depending on the type of value passed as a query parameter. If the value contains commas, the parameter is split on commas and used as array input for `IN` filtering, otherwise the exact match is applied. In order to only show records which have the value 42, the following query should be used:         `?value=42`         In order to filter records which have value 42 or 43, the following query should be used:         `?value=42,43` <br><br> **Like operators**         Like operators allow filtering using `LIKE` query. This operator is triggered if exact match operator is used, but value contains `%` sign as the first or last character. In order to filter records which category that start with `Food`, the following query should be used:         `?category=Food%` <br><br> **Negation operator**         It is possible to get negated results of a query by prefixed the operator with `!`. Some examples:         `//filter records except those with value are not 42 or 43`<br> `?value=!42,43`         `//filter records with value not greater than 21`<br> `?value=!(ge)21` <br><br> **Multiple constraints for single attribute**         It is possible to apply multiple constraints by providing an array of query filters:         Filter all records which value is greater than 20.2 and less than 20.3<br> `?value[]=(gt)20.2&value[]=(lt)20.3`         Filter all records which value is greater than 20.2 and less than 20.3 but not 20.2778<br> `?value[]=(gt)20.2&value[]=(lt)20.3&value[]=!20.2778`<br><br> 

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0.6
- Package version: 1.0.0
- Build date: 2016-06-24T22:13:56.475Z
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

# Setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: internalApiKey
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = SwaggerClient::ApplicationEndpointsApi.new

opts = { 
  access_token: "access_token_example", # String | Application's OAuth2 access token
  connector_id: 56, # Integer | The id for the connector data source for which the connection is connected
  connect_status: "connect_status_example", # String | Indicates whether a connector is currently connected to a service for a user.
  connect_error: "connect_error_example", # String | Error message if there is a problem with authorizing this connection.
  update_requested_at: "update_requested_at_example", # String | Time at which an update was requested by a user.
  update_status: "update_status_example", # String | Indicates whether a connector is currently updated.
  update_error: "update_error_example", # String | Indicates if there was an error during the update.
  last_successful_updated_at: "last_successful_updated_at_example", # String | The time at which the connector was last successfully updated.
  created_at: "created_at_example", # String | When the record was first created. Use ISO 8601 datetime format 
  updated_at: "updated_at_example", # String | When the record was last updated. Use ISO 8601 datetime format 
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  offset: 56, # Integer | OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  sort: "sort_example" # String | Sort by given field. If the field is prefixed with '-', it will sort in descending order.
}

begin
  #Get all Connections
  result = api_instance.v2_application_connections_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApplicationEndpointsApi->v2_application_connections_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://app.quantimo.do/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::ApplicationEndpointsApi* | [**v2_application_connections_get**](docs/ApplicationEndpointsApi.md#v2_application_connections_get) | **GET** /v2/application/connections | Get all Connections
*SwaggerClient::ApplicationEndpointsApi* | [**v2_application_credentials_get**](docs/ApplicationEndpointsApi.md#v2_application_credentials_get) | **GET** /v2/application/credentials | Get all Credentials
*SwaggerClient::ApplicationEndpointsApi* | [**v2_application_measurements_get**](docs/ApplicationEndpointsApi.md#v2_application_measurements_get) | **GET** /v2/application/measurements | Get measurements for all users using your application
*SwaggerClient::ApplicationEndpointsApi* | [**v2_application_tracking_reminders_get**](docs/ApplicationEndpointsApi.md#v2_application_tracking_reminders_get) | **GET** /v2/application/trackingReminders | Get tracking reminders
*SwaggerClient::ApplicationEndpointsApi* | [**v2_application_updates_get**](docs/ApplicationEndpointsApi.md#v2_application_updates_get) | **GET** /v2/application/updates | Get all Updates
*SwaggerClient::ApplicationEndpointsApi* | [**v2_application_user_variable_relationships_get**](docs/ApplicationEndpointsApi.md#v2_application_user_variable_relationships_get) | **GET** /v2/application/userVariableRelationships | Get all UserVariableRelationships
*SwaggerClient::ApplicationEndpointsApi* | [**v2_application_user_variables_get**](docs/ApplicationEndpointsApi.md#v2_application_user_variables_get) | **GET** /v2/application/userVariables | Get all UserVariables
*SwaggerClient::ApplicationEndpointsApi* | [**v2_application_variable_user_sources_get**](docs/ApplicationEndpointsApi.md#v2_application_variable_user_sources_get) | **GET** /v2/application/variableUserSources | Get all VariableUserSources
*SwaggerClient::ApplicationEndpointsApi* | [**v2_application_votes_get**](docs/ApplicationEndpointsApi.md#v2_application_votes_get) | **GET** /v2/application/votes | Get all Votes
*SwaggerClient::AuthenticationApi* | [**v2_auth_social_authorize_code_get**](docs/AuthenticationApi.md#v2_auth_social_authorize_code_get) | **GET** /v2/auth/social/authorizeCode | Second Step in Social Authentication flow with JWT Token
*SwaggerClient::AuthenticationApi* | [**v2_auth_social_authorize_token_get**](docs/AuthenticationApi.md#v2_auth_social_authorize_token_get) | **GET** /v2/auth/social/authorizeToken | Native Social Authentication
*SwaggerClient::AuthenticationApi* | [**v2_auth_social_login_get**](docs/AuthenticationApi.md#v2_auth_social_login_get) | **GET** /v2/auth/social/login | First Setp in Social Authentication flow with JWT Token
*SwaggerClient::AuthenticationApi* | [**v2_oauth2_access_token_get**](docs/AuthenticationApi.md#v2_oauth2_access_token_get) | **GET** /v2/oauth2/access_token | Get a user access token
*SwaggerClient::AuthenticationApi* | [**v2_oauth_authorize_get**](docs/AuthenticationApi.md#v2_oauth_authorize_get) | **GET** /v2/oauth/authorize | Request Authorization Code
*SwaggerClient::ConnectorsApi* | [**v1_connect_js_get**](docs/ConnectorsApi.md#v1_connect_js_get) | **GET** /v1/connect.js | Get embeddable connect javascript
*SwaggerClient::ConnectorsApi* | [**v1_connect_mobile_get**](docs/ConnectorsApi.md#v1_connect_mobile_get) | **GET** /v1/connect/mobile | Mobile connect page
*SwaggerClient::ConnectorsApi* | [**v1_connectors_connector_connect_get**](docs/ConnectorsApi.md#v1_connectors_connector_connect_get) | **GET** /v1/connectors/{connector}/connect | Obtain a token from 3rd party data source
*SwaggerClient::ConnectorsApi* | [**v1_connectors_connector_connect_instructions_get**](docs/ConnectorsApi.md#v1_connectors_connector_connect_instructions_get) | **GET** /v1/connectors/{connector}/connectInstructions | Connection Instructions
*SwaggerClient::ConnectorsApi* | [**v1_connectors_connector_connect_parameter_get**](docs/ConnectorsApi.md#v1_connectors_connector_connect_parameter_get) | **GET** /v1/connectors/{connector}/connectParameter | Connect Parameter
*SwaggerClient::ConnectorsApi* | [**v1_connectors_connector_disconnect_get**](docs/ConnectorsApi.md#v1_connectors_connector_disconnect_get) | **GET** /v1/connectors/{connector}/disconnect | Delete stored connection info
*SwaggerClient::ConnectorsApi* | [**v1_connectors_connector_info_get**](docs/ConnectorsApi.md#v1_connectors_connector_info_get) | **GET** /v1/connectors/{connector}/info | Get connector info for user
*SwaggerClient::ConnectorsApi* | [**v1_connectors_connector_update_get**](docs/ConnectorsApi.md#v1_connectors_connector_update_get) | **GET** /v1/connectors/{connector}/update | Sync with data source
*SwaggerClient::ConnectorsApi* | [**v1_connectors_list_get**](docs/ConnectorsApi.md#v1_connectors_list_get) | **GET** /v1/connectors/list | List of Connectors
*SwaggerClient::CorrelationsApi* | [**v1_aggregated_correlations_get**](docs/CorrelationsApi.md#v1_aggregated_correlations_get) | **GET** /v1/aggregatedCorrelations | Get aggregated correlations
*SwaggerClient::CorrelationsApi* | [**v1_aggregated_correlations_post**](docs/CorrelationsApi.md#v1_aggregated_correlations_post) | **POST** /v1/aggregatedCorrelations | Store or Update a Correlation
*SwaggerClient::CorrelationsApi* | [**v1_correlations_get**](docs/CorrelationsApi.md#v1_correlations_get) | **GET** /v1/correlations | Get correlations
*SwaggerClient::CorrelationsApi* | [**v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get**](docs/CorrelationsApi.md#v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get) | **GET** /v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/causes | Search user correlations for a given cause
*SwaggerClient::CorrelationsApi* | [**v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get**](docs/CorrelationsApi.md#v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get) | **GET** /v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/effects | Search user correlations for a given cause
*SwaggerClient::CorrelationsApi* | [**v1_public_correlations_search_search_get**](docs/CorrelationsApi.md#v1_public_correlations_search_search_get) | **GET** /v1/public/correlations/search/{search} | Get average correlations for variables containing search term
*SwaggerClient::CorrelationsApi* | [**v1_variables_variable_name_causes_get**](docs/CorrelationsApi.md#v1_variables_variable_name_causes_get) | **GET** /v1/variables/{variableName}/causes | Search user correlations for a given effect
*SwaggerClient::CorrelationsApi* | [**v1_variables_variable_name_effects_get**](docs/CorrelationsApi.md#v1_variables_variable_name_effects_get) | **GET** /v1/variables/{variableName}/effects | Search user correlations for a given cause
*SwaggerClient::CorrelationsApi* | [**v1_variables_variable_name_public_causes_get**](docs/CorrelationsApi.md#v1_variables_variable_name_public_causes_get) | **GET** /v1/variables/{variableName}/public/causes | Search public correlations for a given effect
*SwaggerClient::CorrelationsApi* | [**v1_variables_variable_name_public_effects_get**](docs/CorrelationsApi.md#v1_variables_variable_name_public_effects_get) | **GET** /v1/variables/{variableName}/public/effects | Search public correlations for a given cause
*SwaggerClient::CorrelationsApi* | [**v1_votes_delete_post**](docs/CorrelationsApi.md#v1_votes_delete_post) | **POST** /v1/votes/delete | Delete vote
*SwaggerClient::CorrelationsApi* | [**v1_votes_post**](docs/CorrelationsApi.md#v1_votes_post) | **POST** /v1/votes | Post or update vote
*SwaggerClient::MeasurementsApi* | [**v1_measurement_sources_get**](docs/MeasurementsApi.md#v1_measurement_sources_get) | **GET** /v1/measurementSources | Get measurement sources
*SwaggerClient::MeasurementsApi* | [**v1_measurement_sources_post**](docs/MeasurementsApi.md#v1_measurement_sources_post) | **POST** /v1/measurementSources | Add a data source
*SwaggerClient::MeasurementsApi* | [**v1_measurements_daily_get**](docs/MeasurementsApi.md#v1_measurements_daily_get) | **GET** /v1/measurements/daily | Get daily measurements for this user
*SwaggerClient::MeasurementsApi* | [**v1_measurements_delete_post**](docs/MeasurementsApi.md#v1_measurements_delete_post) | **POST** /v1/measurements/delete | Delete a measurement
*SwaggerClient::MeasurementsApi* | [**v1_measurements_get**](docs/MeasurementsApi.md#v1_measurements_get) | **GET** /v1/measurements | Get measurements for this user
*SwaggerClient::MeasurementsApi* | [**v1_measurements_post**](docs/MeasurementsApi.md#v1_measurements_post) | **POST** /v1/measurements | Post a new set or update existing measurements to the database
*SwaggerClient::MeasurementsApi* | [**v1_measurements_range_get**](docs/MeasurementsApi.md#v1_measurements_range_get) | **GET** /v1/measurementsRange | Get measurements range for this user
*SwaggerClient::MeasurementsApi* | [**v2_measurements_csv_get**](docs/MeasurementsApi.md#v2_measurements_csv_get) | **GET** /v2/measurements/csv | Get Measurements CSV
*SwaggerClient::MeasurementsApi* | [**v2_measurements_id_delete**](docs/MeasurementsApi.md#v2_measurements_id_delete) | **DELETE** /v2/measurements/{id} | Delete Measurement
*SwaggerClient::MeasurementsApi* | [**v2_measurements_id_get**](docs/MeasurementsApi.md#v2_measurements_id_get) | **GET** /v2/measurements/{id} | Get Measurement
*SwaggerClient::MeasurementsApi* | [**v2_measurements_id_put**](docs/MeasurementsApi.md#v2_measurements_id_put) | **PUT** /v2/measurements/{id} | Update Measurement
*SwaggerClient::MeasurementsApi* | [**v2_measurements_request_csv_post**](docs/MeasurementsApi.md#v2_measurements_request_csv_post) | **POST** /v2/measurements/request_csv | Post Request for Measurements CSV
*SwaggerClient::MeasurementsApi* | [**v2_measurements_request_pdf_post**](docs/MeasurementsApi.md#v2_measurements_request_pdf_post) | **POST** /v2/measurements/request_pdf | Post Request for Measurements PDF
*SwaggerClient::MeasurementsApi* | [**v2_measurements_request_xls_post**](docs/MeasurementsApi.md#v2_measurements_request_xls_post) | **POST** /v2/measurements/request_xls | Post Request for Measurements XLS
*SwaggerClient::OrganizationsApi* | [**v1_organizations_organization_id_users_post**](docs/OrganizationsApi.md#v1_organizations_organization_id_users_post) | **POST** /v1/organizations/{organizationId}/users | Get user tokens for existing users, create new users
*SwaggerClient::PairsApi* | [**v1_pairs_csv_get**](docs/PairsApi.md#v1_pairs_csv_get) | **GET** /v1/pairsCsv | Get pairs
*SwaggerClient::PairsApi* | [**v1_pairs_get**](docs/PairsApi.md#v1_pairs_get) | **GET** /v1/pairs | Get pairs
*SwaggerClient::RemindersApi* | [**v1_tracking_reminder_notifications_get**](docs/RemindersApi.md#v1_tracking_reminder_notifications_get) | **GET** /v1/trackingReminderNotifications | Get specific pending tracking reminders
*SwaggerClient::RemindersApi* | [**v1_tracking_reminder_notifications_skip_post**](docs/RemindersApi.md#v1_tracking_reminder_notifications_skip_post) | **POST** /v1/trackingReminderNotifications/skip | Skip a pending tracking reminder
*SwaggerClient::RemindersApi* | [**v1_tracking_reminder_notifications_snooze_post**](docs/RemindersApi.md#v1_tracking_reminder_notifications_snooze_post) | **POST** /v1/trackingReminderNotifications/snooze | Snooze a pending tracking reminder
*SwaggerClient::RemindersApi* | [**v1_tracking_reminder_notifications_track_post**](docs/RemindersApi.md#v1_tracking_reminder_notifications_track_post) | **POST** /v1/trackingReminderNotifications/track | Track a pending tracking reminder
*SwaggerClient::RemindersApi* | [**v1_tracking_reminders_delete_post**](docs/RemindersApi.md#v1_tracking_reminders_delete_post) | **POST** /v1/trackingReminders/delete | Delete tracking reminder
*SwaggerClient::RemindersApi* | [**v1_tracking_reminders_get**](docs/RemindersApi.md#v1_tracking_reminders_get) | **GET** /v1/trackingReminders | Get repeating tracking reminder settings
*SwaggerClient::RemindersApi* | [**v1_tracking_reminders_post**](docs/RemindersApi.md#v1_tracking_reminders_post) | **POST** /v1/trackingReminders | Store a Tracking Reminder
*SwaggerClient::TagsApi* | [**v1_user_tags_delete_post**](docs/TagsApi.md#v1_user_tags_delete_post) | **POST** /v1/userTags/delete | Delete user tag or ingredient
*SwaggerClient::TagsApi* | [**v1_user_tags_post**](docs/TagsApi.md#v1_user_tags_post) | **POST** /v1/userTags | Post or update user tags or ingredients
*SwaggerClient::UnitsApi* | [**v1_unit_categories_get**](docs/UnitsApi.md#v1_unit_categories_get) | **GET** /v1/unitCategories | Get unit categories
*SwaggerClient::UnitsApi* | [**v1_units_get**](docs/UnitsApi.md#v1_units_get) | **GET** /v1/units | Get all available units
*SwaggerClient::UnitsApi* | [**v1_units_variable_get**](docs/UnitsApi.md#v1_units_variable_get) | **GET** /v1/unitsVariable | Units for Variable
*SwaggerClient::UserApi* | [**v1_organizations_organization_id_users_post**](docs/UserApi.md#v1_organizations_organization_id_users_post) | **POST** /v1/organizations/{organizationId}/users | Get user tokens for existing users, create new users
*SwaggerClient::UserApi* | [**v1_user_me_get**](docs/UserApi.md#v1_user_me_get) | **GET** /v1/user/me | Get all available units for variableGet authenticated user
*SwaggerClient::VariablesApi* | [**v1_public_variables_get**](docs/VariablesApi.md#v1_public_variables_get) | **GET** /v1/public/variables | Get public variables
*SwaggerClient::VariablesApi* | [**v1_public_variables_search_search_get**](docs/VariablesApi.md#v1_public_variables_search_search_get) | **GET** /v1/public/variables/search/{search} | Get top 5 PUBLIC variables with the most correlations
*SwaggerClient::VariablesApi* | [**v1_user_variables_post**](docs/VariablesApi.md#v1_user_variables_post) | **POST** /v1/userVariables | Update User Settings for a Variable
*SwaggerClient::VariablesApi* | [**v1_variable_categories_get**](docs/VariablesApi.md#v1_variable_categories_get) | **GET** /v1/variableCategories | Variable categories
*SwaggerClient::VariablesApi* | [**v1_variables_get**](docs/VariablesApi.md#v1_variables_get) | **GET** /v1/variables | Get variables by the category name
*SwaggerClient::VariablesApi* | [**v1_variables_post**](docs/VariablesApi.md#v1_variables_post) | **POST** /v1/variables | Create Variables
*SwaggerClient::VariablesApi* | [**v1_variables_search_search_get**](docs/VariablesApi.md#v1_variables_search_search_get) | **GET** /v1/variables/search/{search} | Get variables by search query
*SwaggerClient::VariablesApi* | [**v1_variables_variable_name_get**](docs/VariablesApi.md#v1_variables_variable_name_get) | **GET** /v1/variables/{variableName} | Get info about a variable
*SwaggerClient::VotesApi* | [**v1_votes_delete_post**](docs/VotesApi.md#v1_votes_delete_post) | **POST** /v1/votes/delete | Delete vote
*SwaggerClient::VotesApi* | [**v1_votes_post**](docs/VotesApi.md#v1_votes_post) | **POST** /v1/votes | Post or update vote


## Documentation for Models

 - [SwaggerClient::CommonResponse](docs/CommonResponse.md)
 - [SwaggerClient::Connection](docs/Connection.md)
 - [SwaggerClient::Connector](docs/Connector.md)
 - [SwaggerClient::ConnectorInfo](docs/ConnectorInfo.md)
 - [SwaggerClient::ConnectorInfoHistoryItem](docs/ConnectorInfoHistoryItem.md)
 - [SwaggerClient::ConnectorInstruction](docs/ConnectorInstruction.md)
 - [SwaggerClient::ConversionStep](docs/ConversionStep.md)
 - [SwaggerClient::Correlation](docs/Correlation.md)
 - [SwaggerClient::Credential](docs/Credential.md)
 - [SwaggerClient::HumanTime](docs/HumanTime.md)
 - [SwaggerClient::InlineResponse200](docs/InlineResponse200.md)
 - [SwaggerClient::InlineResponse2001](docs/InlineResponse2001.md)
 - [SwaggerClient::InlineResponse20010](docs/InlineResponse20010.md)
 - [SwaggerClient::InlineResponse20011](docs/InlineResponse20011.md)
 - [SwaggerClient::InlineResponse20012](docs/InlineResponse20012.md)
 - [SwaggerClient::InlineResponse2002](docs/InlineResponse2002.md)
 - [SwaggerClient::InlineResponse2003](docs/InlineResponse2003.md)
 - [SwaggerClient::InlineResponse2004](docs/InlineResponse2004.md)
 - [SwaggerClient::InlineResponse2005](docs/InlineResponse2005.md)
 - [SwaggerClient::InlineResponse2006](docs/InlineResponse2006.md)
 - [SwaggerClient::InlineResponse2007](docs/InlineResponse2007.md)
 - [SwaggerClient::InlineResponse2008](docs/InlineResponse2008.md)
 - [SwaggerClient::InlineResponse2009](docs/InlineResponse2009.md)
 - [SwaggerClient::JsonErrorResponse](docs/JsonErrorResponse.md)
 - [SwaggerClient::Measurement](docs/Measurement.md)
 - [SwaggerClient::MeasurementDelete](docs/MeasurementDelete.md)
 - [SwaggerClient::MeasurementRange](docs/MeasurementRange.md)
 - [SwaggerClient::MeasurementSet](docs/MeasurementSet.md)
 - [SwaggerClient::MeasurementSource](docs/MeasurementSource.md)
 - [SwaggerClient::Pairs](docs/Pairs.md)
 - [SwaggerClient::Permission](docs/Permission.md)
 - [SwaggerClient::PostCorrelation](docs/PostCorrelation.md)
 - [SwaggerClient::PostVote](docs/PostVote.md)
 - [SwaggerClient::TrackingReminder](docs/TrackingReminder.md)
 - [SwaggerClient::TrackingReminderDelete](docs/TrackingReminderDelete.md)
 - [SwaggerClient::TrackingReminderNotification](docs/TrackingReminderNotification.md)
 - [SwaggerClient::TrackingReminderNotificationSkip](docs/TrackingReminderNotificationSkip.md)
 - [SwaggerClient::TrackingReminderNotificationSnooze](docs/TrackingReminderNotificationSnooze.md)
 - [SwaggerClient::TrackingReminderNotificationTrack](docs/TrackingReminderNotificationTrack.md)
 - [SwaggerClient::Unit](docs/Unit.md)
 - [SwaggerClient::UnitCategory](docs/UnitCategory.md)
 - [SwaggerClient::Update](docs/Update.md)
 - [SwaggerClient::User](docs/User.md)
 - [SwaggerClient::UserTag](docs/UserTag.md)
 - [SwaggerClient::UserTokenFailedResponse](docs/UserTokenFailedResponse.md)
 - [SwaggerClient::UserTokenRequest](docs/UserTokenRequest.md)
 - [SwaggerClient::UserTokenRequestInnerUserField](docs/UserTokenRequestInnerUserField.md)
 - [SwaggerClient::UserTokenSuccessfulResponse](docs/UserTokenSuccessfulResponse.md)
 - [SwaggerClient::UserTokenSuccessfulResponseInnerUserField](docs/UserTokenSuccessfulResponseInnerUserField.md)
 - [SwaggerClient::UserVariable](docs/UserVariable.md)
 - [SwaggerClient::UserVariableRelationship](docs/UserVariableRelationship.md)
 - [SwaggerClient::UserVariables](docs/UserVariables.md)
 - [SwaggerClient::ValueObject](docs/ValueObject.md)
 - [SwaggerClient::Variable](docs/Variable.md)
 - [SwaggerClient::VariableCategory](docs/VariableCategory.md)
 - [SwaggerClient::VariableNew](docs/VariableNew.md)
 - [SwaggerClient::VariableUserSource](docs/VariableUserSource.md)
 - [SwaggerClient::VariablesNew](docs/VariablesNew.md)
 - [SwaggerClient::Vote](docs/Vote.md)
 - [SwaggerClient::VoteDelete](docs/VoteDelete.md)


## Documentation for Authorization


### oauth2

- **Type**: OAuth
- **Flow**: implicit
- **Authorization URL**: https://app.quantimo.do/api/v1/oauth2/authorize
- **Scopes**: 
  - basic: Basic authentication
  - readmeasurements: Grants read access to measurements and variables. Allows the client app to obtain the user&#39;s data.
  - writemeasurements: Grants write access to measurements and variables. Allows the client app to store user data.

### quantimodo_oauth2

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: /api/v2/oauth/authorize
- **Scopes**: 
  - basic: allows you to read user info (displayname, email, etc).
  - readmeasurements: allows one to read a user&#39;s data
  - writemeasurements: allows you to write user data

### basicAuth

- **Type**: HTTP basic authentication

### internalApiKey

- **Type**: API key
- **API key parameter name**: api_key
- **Location**: HTTP header

