# SwaggerClient::Variable

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Variable ID | [optional] 
**name** | **String** | User-defined variable display name. | 
**original_name** | **String** | Name used when the variable was originally created in the &#x60;variables&#x60; table. | 
**category** | **String** | Variable category like Mood, Sleep, Physical Activity, Treatment, Symptom, etc. | 
**abbreviated_unit_name** | **String** | Abbreviated name of the default unit for the variable | 
**abbreviated_unit_id** | **Integer** | Id of the default unit for the variable | 
**sources** | **String** | Comma-separated list of source names to limit variables to those sources | 
**minimum_value** | **Float** | Minimum reasonable value for this variable (uses default unit) | 
**maximum_value** | **Float** | Maximum reasonable value for this variable (uses default unit) | 
**combination_operation** | **String** | Way to aggregate measurements over time. Options are \&quot;MEAN\&quot; or \&quot;SUM\&quot;.  SUM should be used for things like minutes of exercise.  If you use MEAN for exercise, then a person might exercise more minutes in one day but add separate measurements that were smaller.  So when we are doing correlational analysis, we would think that the person exercised less that day even though they exercised more.  Conversely, we must use MEAN for things such as ratings which cannot be SUMMED. | 
**filling_value** | **Float** | Value for replacing null measurements | 
**join_with** | **String** | The Variable this Variable should be joined with. If the variable is joined with some other variable then it is not shown to user in the list of variables. | 
**joined_variables** | [**Array&lt;Variable&gt;**](Variable.md) | Array of Variables that are joined with this Variable | 
**parent** | **Integer** | Id of the parent variable if this variable has any parent | 
**sub_variables** | [**Array&lt;Variable&gt;**](Variable.md) | Array of Variables that are sub variables to this Variable | 
**onset_delay** | **Integer** | How long it takes for a measurement in this variable to take effect | 
**duration_of_action** | **Integer** | How long the effect of a measurement in this variable lasts | 
**earliest_measurement_time** | **Integer** | Earliest measurement time | 
**latest_measurement_time** | **Integer** | Latest measurement time | 
**updated** | **Integer** | When this variable or its settings were last updated | 
**cause_only** | **Integer** | A value of 1 indicates that this variable is generally a cause in a causal relationship.  An example of a causeOnly variable would be a variable such as Cloud Cover which would generally not be influenced by the behaviour of the user. | 
**number_of_correlations** | **Integer** | Number of correlations | 
**outcome** | **Integer** | Outcome variables (those with &#x60;outcome&#x60; &#x3D;&#x3D; 1) are variables for which a human would generally want to identify the influencing factors.  These include symptoms of illness, physique, mood, cognitive performance, etc.  Generally correlation calculations are only performed on outcome variables. | 
**measurements_at_last_analysis** | **Integer** | The number of measurements that a given user had for this variable the last time a correlation calculation was performed. Generally correlation values are only updated once the current number of measurements for a variable is more than 10% greater than the measurementsAtLastAnalysis.  This avoids a computationally-demanding recalculation when there&#39;s not enough new data to make a significant difference in the correlation. | 
**number_of_measurements** | **Integer** | Number of measurements | 
**last_unit** | **String** | Last unit | 
**last_value** | **Integer** | Last value | 
**most_common_value** | **Integer** | Most common value | 
**most_common_unit** | **String** | Most common unit | 
**last_source** | **Integer** | Last source | 


