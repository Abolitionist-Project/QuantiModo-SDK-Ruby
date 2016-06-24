=begin
QuantiModo

Welcome to QuantiModo API! QuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications. [Learn about QuantiModo](https://quantimo.do) or contact us at <api@quantimo.do>.         Before you get started, you will need to: * Sign in/Sign up, and add some data at [https://app.quantimo.do/api/v2/account/connectors](https://app.quantimo.do/api/v2/account/connectors) to try out the API for yourself * Create an app to get your client id and secret at [https://app.quantimo.do/api/v2/apps](https://app.quantimo.do/api/v2/apps) * As long as you're signed in, it will use your browser's cookie for authentication.  However, client applications must use OAuth2 tokens to access the API.     ## Application Endpoints These endpoints give you access to all authorized users' data for that application. ### Getting Application Token Make a `POST` request to `/api/v2/oauth/access_token`         * `grant_type` Must be `client_credentials`.         * `clientId` Your application's clientId.         * `client_secret` Your application's client_secret.         * `redirect_uri` Your application's redirect url.                ## Example Queries ### Query Options The standard query options for QuantiModo API are as described in the table below. These are the available query options in QuantiModo API: <table>            <thead>                <tr>                    <th>Parameter</th>                    <th>Description</th>                </tr>            </thead>            <tbody>                <tr>                    <td>limit</td>                    <td>The LIMIT is used to limit the number of results returned.  So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.</td>                </tr>                <tr>                    <td>offset</td>                    <td>Suppose you wanted to show results 11-20. You'd set the    offset to 10 and the limit to 10.</td>                </tr>                <tr>                    <td>sort</td>                    <td>Sort by given field. If the field is prefixed with '-', it    will sort in descending order.</td>                </tr>            </tbody>        </table>         ### Pagination Conventions Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters,         `/v2/variables?limit=20&offset=60`         Generally, you'll be retrieving new or updated user data. To avoid unnecessary API calls, you'll want to store your last refresh time locally.  Initially, it should be set to 0. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append         `?lastUpdated=(ge)&quot2013-01-D01T01:01:01&quot`         to your request.         Also for better pagination, you can get link to the records of first, last, next and previous page from response headers: * `Total-Count` - Total number of results for given query * `Link-First` - Link to get first page records * `Link-Last` - Link to get last page records * `Link-Prev` - Link to get previous records set * `Link-Next` - Link to get next records set         Remember, response header will be only sent when the record set is available. e.g. You will not get a ```Link-Last``` & ```Link-Next``` when you query for the last page.         ### Filter operators support API supports the following operators with filter parameters: <br> **Comparison operators**         Comparison operators allow you to limit results to those greater than, less than, or equal to a specified value for a specified attribute. These operators can be used with strings, numbers, and dates. The following comparison operators are available: * `gt` for `greater than` comparison * `ge` for `greater than or equal` comparison * `lt` for `less than` comparison * `le` for `less than or equal` comparison         They are included in queries using the following format:         `(<operator>)<value>`         For example, in order to filter value which is greater than 21, the following query parameter should be used:         `?value=(gt)21` <br><br> **Equals/In Operators**         It also allows filtering by the exact value of an attribute or by a set of values, depending on the type of value passed as a query parameter. If the value contains commas, the parameter is split on commas and used as array input for `IN` filtering, otherwise the exact match is applied. In order to only show records which have the value 42, the following query should be used:         `?value=42`         In order to filter records which have value 42 or 43, the following query should be used:         `?value=42,43` <br><br> **Like operators**         Like operators allow filtering using `LIKE` query. This operator is triggered if exact match operator is used, but value contains `%` sign as the first or last character. In order to filter records which category that start with `Food`, the following query should be used:         `?category=Food%` <br><br> **Negation operator**         It is possible to get negated results of a query by prefixed the operator with `!`. Some examples:         `//filter records except those with value are not 42 or 43`<br> `?value=!42,43`         `//filter records with value not greater than 21`<br> `?value=!(ge)21` <br><br> **Multiple constraints for single attribute**         It is possible to apply multiple constraints by providing an array of query filters:         Filter all records which value is greater than 20.2 and less than 20.3<br> `?value[]=(gt)20.2&value[]=(lt)20.3`         Filter all records which value is greater than 20.2 and less than 20.3 but not 20.2778<br> `?value[]=(gt)20.2&value[]=(lt)20.3&value[]=!20.2778`<br><br> 

OpenAPI spec version: 2.0.6

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ApplicationEndpointsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApplicationEndpointsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ApplicationEndpointsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApplicationEndpointsApi' do
    it 'should create an instact of ApplicationEndpointsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ApplicationEndpointsApi)
    end
  end

  # unit tests for v2_application_connections_get
  # Get all Connections
  # Get all Connections
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_token Application&#39;s OAuth2 access token
  # @option opts [Integer] :connector_id The id for the connector data source for which the connection is connected
  # @option opts [String] :connect_status Indicates whether a connector is currently connected to a service for a user.
  # @option opts [String] :connect_error Error message if there is a problem with authorizing this connection.
  # @option opts [String] :update_requested_at Time at which an update was requested by a user.
  # @option opts [String] :update_status Indicates whether a connector is currently updated.
  # @option opts [String] :update_error Indicates if there was an error during the update.
  # @option opts [String] :last_successful_updated_at The time at which the connector was last successfully updated.
  # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format 
  # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format 
  # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
  # @return [InlineResponse2003]
  describe 'v2_application_connections_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v2_application_credentials_get
  # Get all Credentials
  # Get all Credentials
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_token Application&#39;s OAuth2 access token
  # @option opts [Integer] :connector_id The id for the connector data source from which the credential was obtained
  # @option opts [String] :attr_key Attribute name such as token, userid, username, or password
  # @option opts [String] :attr_value Encrypted value for the attribute specified
  # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format 
  # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format 
  # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
  # @return [InlineResponse2004]
  describe 'v2_application_credentials_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v2_application_measurements_get
  # Get measurements for all users using your application
  # Measurements are any value that can be recorded like daily steps, a mood rating, or apples eaten.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_token Application&#39;s OAuth2 access token
  # @option opts [String] :client_id The ID of the client application which originally stored the measurement
  # @option opts [Integer] :connector_id The id for the connector data source from which the measurement was obtained
  # @option opts [Integer] :variable_id ID of the variable for which we are creating the measurement records
  # @option opts [Integer] :source_id Application or device used to record the measurement values
  # @option opts [String] :start_time start time for the measurement event. Use ISO 8601 datetime format 
  # @option opts [Float] :value The value of the measurement after conversion to the default unit for that variable
  # @option opts [Integer] :unit_id The default unit id for the variable
  # @option opts [Float] :original_value Unconverted value of measurement as originally posted (before conversion to default unit)
  # @option opts [Integer] :original_unit_id Unit id of the measurement as originally submitted
  # @option opts [Integer] :duration Duration of the event being measurement in seconds
  # @option opts [String] :note An optional note the user may include with their measurement
  # @option opts [Float] :latitude Latitude at which the measurement was taken
  # @option opts [Float] :longitude Longitude at which the measurement was taken
  # @option opts [String] :location Optional human readable name for the location where the measurement was recorded
  # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format 
  # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format 
  # @option opts [String] :error An error message if there is a problem with the measurement
  # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
  # @return [InlineResponse2005]
  describe 'v2_application_measurements_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v2_application_tracking_reminders_get
  # Get tracking reminders
  # Get the variable id, frequency, and default value for the user tracking reminders 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_token User&#39;s OAuth2 access token
  # @option opts [String] :client_id The ID of the client application which last created or updated this trackingReminder
  # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format 
  # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format 
  # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
  # @return [InlineResponse2001]
  describe 'v2_application_tracking_reminders_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v2_application_updates_get
  # Get all Updates
  # Get all Updates
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_token Application&#39;s OAuth2 access token
  # @option opts [Integer] :connector_id connector_id
  # @option opts [Integer] :number_of_measurements number_of_measurements
  # @option opts [BOOLEAN] :success success
  # @option opts [String] :message message
  # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format 
  # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format 
  # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
  # @return [InlineResponse2006]
  describe 'v2_application_updates_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v2_application_user_variable_relationships_get
  # Get all UserVariableRelationships
  # Get all UserVariableRelationships
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_token User&#39;s OAuth2 access token
  # @option opts [Integer] :id id
  # @option opts [String] :confidence_level Our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors
  # @option opts [Float] :confidence_score A quantitative representation of our confidence that a consistent predictive relationship exists based on the amount of evidence, reproducibility, and other factors
  # @option opts [String] :direction Direction is positive if higher predictor values generally precede higher outcome values. Direction is negative if higher predictor values generally precede lower outcome values.
  # @option opts [Integer] :duration_of_action Estimated number of seconds following the onset delay in which a stimulus produces a perceivable effect
  # @option opts [String] :error_message error_message
  # @option opts [Integer] :onset_delay Estimated number of seconds that pass before a stimulus produces a perceivable effect
  # @option opts [Integer] :outcome_variable_id Variable ID for the outcome variable
  # @option opts [Integer] :predictor_variable_id Variable ID for the predictor variable
  # @option opts [Integer] :predictor_unit_id ID for default unit of the predictor variable
  # @option opts [Float] :sinn_rank A value representative of the relevance of this predictor relative to other predictors of this outcome.  Usually used for relevancy sorting.
  # @option opts [String] :strength_level Can be weak, medium, or strong based on the size of the effect which the predictor appears to have on the outcome relative to other variable relationship strength scores.
  # @option opts [Float] :strength_score A value represented to the size of the effect which the predictor appears to have on the outcome.
  # @option opts [String] :vote vote
  # @option opts [Float] :value_predicting_high_outcome Value for the predictor variable (in it&#39;s default unit) which typically precedes an above average outcome value
  # @option opts [Float] :value_predicting_low_outcome Value for the predictor variable (in it&#39;s default unit) which typically precedes a below average outcome value
  # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
  # @return [InlineResponse2007]
  describe 'v2_application_user_variable_relationships_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v2_application_user_variables_get
  # Get all UserVariables
  # Get all UserVariables
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_token User&#39;s OAuth2 access token
  # @option opts [String] :client_id The ID of the client application which last created or updated this user variable
  # @option opts [Integer] :parent_id ID of the parent variable if this variable has any parent
  # @option opts [Integer] :variable_id ID of variable
  # @option opts [Integer] :default_unit_id D of unit to use for this variable
  # @option opts [Float] :minimum_allowed_value Minimum reasonable value for this variable (uses default unit)
  # @option opts [Float] :maximum_allowed_value Maximum reasonable value for this variable (uses default unit)
  # @option opts [Float] :filling_value Value for replacing null measurements
  # @option opts [Integer] :join_with The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables
  # @option opts [Integer] :onset_delay Estimated number of seconds that pass before a stimulus produces a perceivable effect
  # @option opts [Integer] :duration_of_action Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect
  # @option opts [Integer] :variable_category_id ID of variable category
  # @option opts [Integer] :updated updated
  # @option opts [Integer] :public Is variable public
  # @option opts [BOOLEAN] :cause_only A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user
  # @option opts [String] :filling_type 0 -&gt; No filling, 1 -&gt; Use filling-value
  # @option opts [Integer] :number_of_measurements Number of measurements
  # @option opts [Integer] :number_of_processed_measurements Number of processed measurements
  # @option opts [Integer] :measurements_at_last_analysis Number of measurements at last analysis
  # @option opts [Integer] :last_unit_id ID of last Unit
  # @option opts [Integer] :last_original_unit_id ID of last original Unit
  # @option opts [Integer] :last_original_value Last original value which is stored
  # @option opts [Float] :last_value Last Value
  # @option opts [Integer] :last_source_id ID of last source
  # @option opts [Integer] :number_of_correlations Number of correlations for this variable
  # @option opts [String] :status status
  # @option opts [String] :error_message error_message
  # @option opts [String] :last_successful_update_time When this variable or its settings were last updated
  # @option opts [Float] :standard_deviation Standard deviation
  # @option opts [Float] :variance Variance
  # @option opts [Float] :minimum_recorded_value Minimum recorded value of this variable
  # @option opts [Float] :maximum_recorded_value Maximum recorded value of this variable
  # @option opts [Float] :mean Mean
  # @option opts [Float] :median Median
  # @option opts [Integer] :most_common_unit_id Most common Unit ID
  # @option opts [Float] :most_common_value Most common value
  # @option opts [Float] :number_of_unique_daily_values Number of unique daily values
  # @option opts [Integer] :number_of_changes Number of changes
  # @option opts [Float] :skewness Skewness
  # @option opts [Float] :kurtosis Kurtosis
  # @option opts [Float] :latitude Latitude
  # @option opts [Float] :longitude Longitude
  # @option opts [String] :location Location
  # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format 
  # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format 
  # @option opts [BOOLEAN] :outcome Outcome variables (those with &#x60;outcome&#x60; &#x3D;&#x3D; 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables
  # @option opts [String] :sources Comma-separated list of source names to limit variables to those sources
  # @option opts [Integer] :earliest_source_time Earliest source time
  # @option opts [Integer] :latest_source_time Latest source time
  # @option opts [Integer] :earliest_measurement_time Earliest measurement time
  # @option opts [Integer] :latest_measurement_time Latest measurement time
  # @option opts [Integer] :earliest_filling_time Earliest filling time
  # @option opts [Integer] :latest_filling_time Latest filling time
  # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
  # @return [InlineResponse2008]
  describe 'v2_application_user_variables_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v2_application_variable_user_sources_get
  # Get all VariableUserSources
  # Get all VariableUserSources
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_token User&#39;s OAuth2 access token
  # @option opts [Integer] :variable_id ID of variable
  # @option opts [Integer] :timestamp Time that this measurement occurred Uses epoch minute (epoch time divided by 60)
  # @option opts [Integer] :earliest_measurement_time Earliest measurement time
  # @option opts [Integer] :latest_measurement_time Latest measurement time
  # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format 
  # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format 
  # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
  # @return [InlineResponse2009]
  describe 'v2_application_variable_user_sources_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v2_application_votes_get
  # Get all Votes
  # Get all Votes
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_token User&#39;s OAuth2 access token
  # @option opts [String] :client_id The ID of the client application which last created or updated this vote
  # @option opts [Integer] :cause_id ID of predictor variable
  # @option opts [Integer] :effect_id ID of outcome variable
  # @option opts [Integer] :value Value of Vote. 1 is for upvote. 0 is for downvote.  Otherwise, there is no vote.
  # @option opts [String] :created_at When the record was first created. Use ISO 8601 datetime format 
  # @option opts [String] :updated_at When the record was last updated. Use ISO 8601 datetime format 
  # @option opts [Integer] :limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  # @option opts [Integer] :offset OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  # @option opts [String] :sort Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.
  # @return [InlineResponse20010]
  describe 'v2_application_votes_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
