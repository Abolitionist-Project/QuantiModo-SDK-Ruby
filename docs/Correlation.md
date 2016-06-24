# SwaggerClient::Correlation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**correlation_coefficient** | **Float** | Pearson correlation coefficient between cause and effect measurements | 
**cause** | **String** | ORIGINAL variable name of the cause variable for which the user desires correlations. | 
**original_cause** | **String** | original name of the cause. | [optional] 
**effect** | **String** | ORIGINAL variable name of the effect variable for which the user desires correlations. | 
**original_effect** | **String** | effect variable original name. | [optional] 
**onset_delay** | **Float** | User estimated or default time after cause measurement before a perceivable effect is observed | 
**duration_of_action** | **Float** | Time over which the cause is expected to produce a perceivable effect following the onset delay | 
**number_of_pairs** | **Float** | Number of points that went into the correlation calculation | 
**effect_size** | **String** | Magnitude of the effects of a cause indicating whether it&#39;s practically meaningful. | [optional] 
**statistical_significance** | **String** | A function of the effect size and sample size | [optional] 
**timestamp** | **Float** | Time at which correlation was calculated | 
**reverse_correlation** | **Float** | Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation. | [optional] 
**causality_factor** | **Float** |  | [optional] 
**cause_category** | **String** | Variable category of the cause variable. | [optional] 
**effect_category** | **String** | Variable category of the effect variable. | [optional] 
**value_predicting_high_outcome** | **Float** | cause value that predicts an above average effect value (in default unit for cause variable) | [optional] 
**value_predicting_low_outcome** | **Float** | cause value that predicts a below average effect value (in default unit for cause variable) | [optional] 
**optimal_pearson_product** | **Float** | Optimal Pearson Product | [optional] 
**average_vote** | **Float** | Average Vote | [optional] 
**user_vote** | **Float** | User Vote | [optional] 
**cause_unit** | **String** | Unit of the predictor variable | [optional] 
**cause_unit_id** | **Integer** | Unit Id of the predictor variable | [optional] 


