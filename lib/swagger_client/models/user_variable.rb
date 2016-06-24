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

require 'date'

module SwaggerClient

  class UserVariable
    # ID of the parent variable if this variable has any parent
    attr_accessor :parent_id

    # User ID
    attr_accessor :user_id

    # client_id
    attr_accessor :client_id

    # ID of variable
    attr_accessor :variable_id

    # ID of unit to use for this variable
    attr_accessor :default_unit_id

    # Minimum reasonable value for this variable (uses default unit)
    attr_accessor :minimum_allowed_value

    # Maximum reasonable value for this variable (uses default unit)
    attr_accessor :maximum_allowed_value

    # Value for replacing null measurements
    attr_accessor :filling_value

    # The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables
    attr_accessor :join_with

    # How long it takes for a measurement in this variable to take effect
    attr_accessor :onset_delay

    # Estimated duration of time following the onset delay in which a stimulus produces a perceivable effect
    attr_accessor :duration_of_action

    # ID of variable category
    attr_accessor :variable_category_id

    # updated
    attr_accessor :updated

    # Is variable public
    attr_accessor :public

    # A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user
    attr_accessor :cause_only

    # 0 -> No filling, 1 -> Use filling-value
    attr_accessor :filling_type

    # Number of measurements
    attr_accessor :number_of_measurements

    # Number of processed measurements
    attr_accessor :number_of_processed_measurements

    # Number of measurements at last analysis
    attr_accessor :measurements_at_last_analysis

    # ID of last Unit
    attr_accessor :last_unit_id

    # ID of last original Unit
    attr_accessor :last_original_unit_id

    # Last Value
    attr_accessor :last_value

    # Last original value which is stored
    attr_accessor :last_original_value

    # ID of last source
    attr_accessor :last_source_id

    # Number of correlations for this variable
    attr_accessor :number_of_correlations

    # status
    attr_accessor :status

    # error_message
    attr_accessor :error_message

    # When this variable or its settings were last updated
    attr_accessor :last_successful_update_time

    # Standard deviation
    attr_accessor :standard_deviation

    # Variance
    attr_accessor :variance

    # Minimum recorded value of this variable
    attr_accessor :minimum_recorded_value

    # Maximum recorded daily value of this variable
    attr_accessor :maximum_recorded_daily_value

    # Mean
    attr_accessor :mean

    # Median
    attr_accessor :median

    # Most common Unit ID
    attr_accessor :most_common_unit_id

    # Most common value
    attr_accessor :most_common_value

    # Number of unique daily values
    attr_accessor :number_of_unique_daily_values

    # Number of changes
    attr_accessor :number_of_changes

    # Skewness
    attr_accessor :skewness

    # Kurtosis
    attr_accessor :kurtosis

    # Latitude
    attr_accessor :latitude

    # Longitude
    attr_accessor :longitude

    # Location
    attr_accessor :location

    # Earliest measurement start_time to be used in analysis. Use ISO 8601 datetime format
    attr_accessor :experiment_start_time

    # Latest measurement start_time to be used in analysis. Use ISO 8601 datetime format
    attr_accessor :experiment_end_time

    # When the record was first created. Use ISO 8601 datetime format
    attr_accessor :created_at

    # When the record in the database was last updated. Use ISO 8601 datetime format
    attr_accessor :updated_at

    # Outcome variables (those with `outcome` == 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables
    attr_accessor :outcome

    # Comma-separated list of source names to limit variables to those sources
    attr_accessor :sources

    # Earliest source time
    attr_accessor :earliest_source_time

    # Latest source time
    attr_accessor :latest_source_time

    # Earliest measurement time
    attr_accessor :earliest_measurement_time

    # Latest measurement time
    attr_accessor :latest_measurement_time

    # Earliest filling time
    attr_accessor :earliest_filling_time

    # Latest filling time
    attr_accessor :latest_filling_time


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'parent_id' => :'parent_id',
        :'user_id' => :'user_id',
        :'client_id' => :'client_id',
        :'variable_id' => :'variable_id',
        :'default_unit_id' => :'default_unit_id',
        :'minimum_allowed_value' => :'minimum_allowed_value',
        :'maximum_allowed_value' => :'maximum_allowed_value',
        :'filling_value' => :'filling_value',
        :'join_with' => :'join_with',
        :'onset_delay' => :'onset_delay',
        :'duration_of_action' => :'duration_of_action',
        :'variable_category_id' => :'variable_category_id',
        :'updated' => :'updated',
        :'public' => :'public',
        :'cause_only' => :'cause_only',
        :'filling_type' => :'filling_type',
        :'number_of_measurements' => :'number_of_measurements',
        :'number_of_processed_measurements' => :'number_of_processed_measurements',
        :'measurements_at_last_analysis' => :'measurements_at_last_analysis',
        :'last_unit_id' => :'last_unit_id',
        :'last_original_unit_id' => :'last_original_unit_id',
        :'last_value' => :'last_value',
        :'last_original_value' => :'last_original_value',
        :'last_source_id' => :'last_source_id',
        :'number_of_correlations' => :'number_of_correlations',
        :'status' => :'status',
        :'error_message' => :'error_message',
        :'last_successful_update_time' => :'last_successful_update_time',
        :'standard_deviation' => :'standard_deviation',
        :'variance' => :'variance',
        :'minimum_recorded_value' => :'minimum_recorded_value',
        :'maximum_recorded_daily_value' => :'maximum_recorded_daily_value',
        :'mean' => :'mean',
        :'median' => :'median',
        :'most_common_unit_id' => :'most_common_unit_id',
        :'most_common_value' => :'most_common_value',
        :'number_of_unique_daily_values' => :'number_of_unique_daily_values',
        :'number_of_changes' => :'number_of_changes',
        :'skewness' => :'skewness',
        :'kurtosis' => :'kurtosis',
        :'latitude' => :'latitude',
        :'longitude' => :'longitude',
        :'location' => :'location',
        :'experiment_start_time' => :'experiment_start_time',
        :'experiment_end_time' => :'experiment_end_time',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'outcome' => :'outcome',
        :'sources' => :'sources',
        :'earliest_source_time' => :'earliest_source_time',
        :'latest_source_time' => :'latest_source_time',
        :'earliest_measurement_time' => :'earliest_measurement_time',
        :'latest_measurement_time' => :'latest_measurement_time',
        :'earliest_filling_time' => :'earliest_filling_time',
        :'latest_filling_time' => :'latest_filling_time'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'parent_id' => :'Integer',
        :'user_id' => :'Integer',
        :'client_id' => :'String',
        :'variable_id' => :'Integer',
        :'default_unit_id' => :'Integer',
        :'minimum_allowed_value' => :'Float',
        :'maximum_allowed_value' => :'Float',
        :'filling_value' => :'Float',
        :'join_with' => :'Integer',
        :'onset_delay' => :'Integer',
        :'duration_of_action' => :'Integer',
        :'variable_category_id' => :'Integer',
        :'updated' => :'Integer',
        :'public' => :'Integer',
        :'cause_only' => :'BOOLEAN',
        :'filling_type' => :'String',
        :'number_of_measurements' => :'Integer',
        :'number_of_processed_measurements' => :'Integer',
        :'measurements_at_last_analysis' => :'Integer',
        :'last_unit_id' => :'Integer',
        :'last_original_unit_id' => :'Integer',
        :'last_value' => :'Float',
        :'last_original_value' => :'Integer',
        :'last_source_id' => :'Integer',
        :'number_of_correlations' => :'Integer',
        :'status' => :'String',
        :'error_message' => :'String',
        :'last_successful_update_time' => :'DateTime',
        :'standard_deviation' => :'Float',
        :'variance' => :'Float',
        :'minimum_recorded_value' => :'Float',
        :'maximum_recorded_daily_value' => :'Float',
        :'mean' => :'Float',
        :'median' => :'Float',
        :'most_common_unit_id' => :'Integer',
        :'most_common_value' => :'Float',
        :'number_of_unique_daily_values' => :'Float',
        :'number_of_changes' => :'Integer',
        :'skewness' => :'Float',
        :'kurtosis' => :'Float',
        :'latitude' => :'Float',
        :'longitude' => :'Float',
        :'location' => :'String',
        :'experiment_start_time' => :'DateTime',
        :'experiment_end_time' => :'DateTime',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'outcome' => :'BOOLEAN',
        :'sources' => :'String',
        :'earliest_source_time' => :'Integer',
        :'latest_source_time' => :'Integer',
        :'earliest_measurement_time' => :'Integer',
        :'latest_measurement_time' => :'Integer',
        :'earliest_filling_time' => :'Integer',
        :'latest_filling_time' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'parent_id')
        self.parent_id = attributes[:'parent_id']
      end

      if attributes.has_key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.has_key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.has_key?(:'variable_id')
        self.variable_id = attributes[:'variable_id']
      end

      if attributes.has_key?(:'default_unit_id')
        self.default_unit_id = attributes[:'default_unit_id']
      end

      if attributes.has_key?(:'minimum_allowed_value')
        self.minimum_allowed_value = attributes[:'minimum_allowed_value']
      end

      if attributes.has_key?(:'maximum_allowed_value')
        self.maximum_allowed_value = attributes[:'maximum_allowed_value']
      end

      if attributes.has_key?(:'filling_value')
        self.filling_value = attributes[:'filling_value']
      end

      if attributes.has_key?(:'join_with')
        self.join_with = attributes[:'join_with']
      end

      if attributes.has_key?(:'onset_delay')
        self.onset_delay = attributes[:'onset_delay']
      end

      if attributes.has_key?(:'duration_of_action')
        self.duration_of_action = attributes[:'duration_of_action']
      end

      if attributes.has_key?(:'variable_category_id')
        self.variable_category_id = attributes[:'variable_category_id']
      end

      if attributes.has_key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.has_key?(:'public')
        self.public = attributes[:'public']
      end

      if attributes.has_key?(:'cause_only')
        self.cause_only = attributes[:'cause_only']
      end

      if attributes.has_key?(:'filling_type')
        self.filling_type = attributes[:'filling_type']
      end

      if attributes.has_key?(:'number_of_measurements')
        self.number_of_measurements = attributes[:'number_of_measurements']
      end

      if attributes.has_key?(:'number_of_processed_measurements')
        self.number_of_processed_measurements = attributes[:'number_of_processed_measurements']
      end

      if attributes.has_key?(:'measurements_at_last_analysis')
        self.measurements_at_last_analysis = attributes[:'measurements_at_last_analysis']
      end

      if attributes.has_key?(:'last_unit_id')
        self.last_unit_id = attributes[:'last_unit_id']
      end

      if attributes.has_key?(:'last_original_unit_id')
        self.last_original_unit_id = attributes[:'last_original_unit_id']
      end

      if attributes.has_key?(:'last_value')
        self.last_value = attributes[:'last_value']
      end

      if attributes.has_key?(:'last_original_value')
        self.last_original_value = attributes[:'last_original_value']
      end

      if attributes.has_key?(:'last_source_id')
        self.last_source_id = attributes[:'last_source_id']
      end

      if attributes.has_key?(:'number_of_correlations')
        self.number_of_correlations = attributes[:'number_of_correlations']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'error_message')
        self.error_message = attributes[:'error_message']
      end

      if attributes.has_key?(:'last_successful_update_time')
        self.last_successful_update_time = attributes[:'last_successful_update_time']
      end

      if attributes.has_key?(:'standard_deviation')
        self.standard_deviation = attributes[:'standard_deviation']
      end

      if attributes.has_key?(:'variance')
        self.variance = attributes[:'variance']
      end

      if attributes.has_key?(:'minimum_recorded_value')
        self.minimum_recorded_value = attributes[:'minimum_recorded_value']
      end

      if attributes.has_key?(:'maximum_recorded_daily_value')
        self.maximum_recorded_daily_value = attributes[:'maximum_recorded_daily_value']
      end

      if attributes.has_key?(:'mean')
        self.mean = attributes[:'mean']
      end

      if attributes.has_key?(:'median')
        self.median = attributes[:'median']
      end

      if attributes.has_key?(:'most_common_unit_id')
        self.most_common_unit_id = attributes[:'most_common_unit_id']
      end

      if attributes.has_key?(:'most_common_value')
        self.most_common_value = attributes[:'most_common_value']
      end

      if attributes.has_key?(:'number_of_unique_daily_values')
        self.number_of_unique_daily_values = attributes[:'number_of_unique_daily_values']
      end

      if attributes.has_key?(:'number_of_changes')
        self.number_of_changes = attributes[:'number_of_changes']
      end

      if attributes.has_key?(:'skewness')
        self.skewness = attributes[:'skewness']
      end

      if attributes.has_key?(:'kurtosis')
        self.kurtosis = attributes[:'kurtosis']
      end

      if attributes.has_key?(:'latitude')
        self.latitude = attributes[:'latitude']
      end

      if attributes.has_key?(:'longitude')
        self.longitude = attributes[:'longitude']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'experiment_start_time')
        self.experiment_start_time = attributes[:'experiment_start_time']
      end

      if attributes.has_key?(:'experiment_end_time')
        self.experiment_end_time = attributes[:'experiment_end_time']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'outcome')
        self.outcome = attributes[:'outcome']
      end

      if attributes.has_key?(:'sources')
        self.sources = attributes[:'sources']
      end

      if attributes.has_key?(:'earliest_source_time')
        self.earliest_source_time = attributes[:'earliest_source_time']
      end

      if attributes.has_key?(:'latest_source_time')
        self.latest_source_time = attributes[:'latest_source_time']
      end

      if attributes.has_key?(:'earliest_measurement_time')
        self.earliest_measurement_time = attributes[:'earliest_measurement_time']
      end

      if attributes.has_key?(:'latest_measurement_time')
        self.latest_measurement_time = attributes[:'latest_measurement_time']
      end

      if attributes.has_key?(:'earliest_filling_time')
        self.earliest_filling_time = attributes[:'earliest_filling_time']
      end

      if attributes.has_key?(:'latest_filling_time')
        self.latest_filling_time = attributes[:'latest_filling_time']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @variable_id.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          parent_id == o.parent_id &&
          user_id == o.user_id &&
          client_id == o.client_id &&
          variable_id == o.variable_id &&
          default_unit_id == o.default_unit_id &&
          minimum_allowed_value == o.minimum_allowed_value &&
          maximum_allowed_value == o.maximum_allowed_value &&
          filling_value == o.filling_value &&
          join_with == o.join_with &&
          onset_delay == o.onset_delay &&
          duration_of_action == o.duration_of_action &&
          variable_category_id == o.variable_category_id &&
          updated == o.updated &&
          public == o.public &&
          cause_only == o.cause_only &&
          filling_type == o.filling_type &&
          number_of_measurements == o.number_of_measurements &&
          number_of_processed_measurements == o.number_of_processed_measurements &&
          measurements_at_last_analysis == o.measurements_at_last_analysis &&
          last_unit_id == o.last_unit_id &&
          last_original_unit_id == o.last_original_unit_id &&
          last_value == o.last_value &&
          last_original_value == o.last_original_value &&
          last_source_id == o.last_source_id &&
          number_of_correlations == o.number_of_correlations &&
          status == o.status &&
          error_message == o.error_message &&
          last_successful_update_time == o.last_successful_update_time &&
          standard_deviation == o.standard_deviation &&
          variance == o.variance &&
          minimum_recorded_value == o.minimum_recorded_value &&
          maximum_recorded_daily_value == o.maximum_recorded_daily_value &&
          mean == o.mean &&
          median == o.median &&
          most_common_unit_id == o.most_common_unit_id &&
          most_common_value == o.most_common_value &&
          number_of_unique_daily_values == o.number_of_unique_daily_values &&
          number_of_changes == o.number_of_changes &&
          skewness == o.skewness &&
          kurtosis == o.kurtosis &&
          latitude == o.latitude &&
          longitude == o.longitude &&
          location == o.location &&
          experiment_start_time == o.experiment_start_time &&
          experiment_end_time == o.experiment_end_time &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          outcome == o.outcome &&
          sources == o.sources &&
          earliest_source_time == o.earliest_source_time &&
          latest_source_time == o.latest_source_time &&
          earliest_measurement_time == o.earliest_measurement_time &&
          latest_measurement_time == o.latest_measurement_time &&
          earliest_filling_time == o.earliest_filling_time &&
          latest_filling_time == o.latest_filling_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [parent_id, user_id, client_id, variable_id, default_unit_id, minimum_allowed_value, maximum_allowed_value, filling_value, join_with, onset_delay, duration_of_action, variable_category_id, updated, public, cause_only, filling_type, number_of_measurements, number_of_processed_measurements, measurements_at_last_analysis, last_unit_id, last_original_unit_id, last_value, last_original_value, last_source_id, number_of_correlations, status, error_message, last_successful_update_time, standard_deviation, variance, minimum_recorded_value, maximum_recorded_daily_value, mean, median, most_common_unit_id, most_common_value, number_of_unique_daily_values, number_of_changes, skewness, kurtosis, latitude, longitude, location, experiment_start_time, experiment_end_time, created_at, updated_at, outcome, sources, earliest_source_time, latest_source_time, earliest_measurement_time, latest_measurement_time, earliest_filling_time, latest_filling_time].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
