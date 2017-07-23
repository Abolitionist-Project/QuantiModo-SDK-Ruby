# SwaggerClient::Correlation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**average_daily_low_cause** | **Float** |  | [optional] 
**average_daily_high_cause** | **Float** |  | [optional] 
**average_effect** | **Float** |  | [optional] 
**average_effect_following_high_cause** | **Float** |  | [optional] 
**average_effect_following_low_cause** | **Float** |  | [optional] 
**average_effect_following_high_cause_explanation** | **String** |  | [optional] 
**average_effect_following_low_cause_explanation** | **String** |  | [optional] 
**average_vote** | **Float** | Average Vote | [optional] 
**causality_factor** | **Float** |  | [optional] 
**cause** | **String** | Variable name of the cause variable for which the user desires correlations. | 
**cause_variable_category_name** | **String** | Variable category of the cause variable. | [optional] 
**cause_changes** | **Integer** | Number of changes in the predictor variable (a.k.a the number of experiments) | [optional] 
**cause_variable_combination_operation** | **String** | The way cause measurements are aggregated | [optional] 
**cause_variable_image_url** | **String** |  | [optional] 
**cause_variable_ion_icon** | **String** | For use in Ionic apps | [optional] 
**cause_unit** | **String** | Unit of the predictor variable | [optional] 
**cause_variable_default_unit_id** | **Integer** | Unit Id of the predictor variable | [optional] 
**cause_variable_id** | **Integer** |  | [optional] 
**cause_variable_name** | **String** | Variable name of the cause variable for which the user desires correlations. | [optional] 
**correlation_coefficient** | **Float** | Pearson correlation coefficient between cause and effect measurements | 
**created_at** | **DateTime** | When the record was first created. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format | [optional] 
**data_analysis** | **String** | How the data was analyzed | [optional] 
**data_sources** | **String** | How the data was obtained | [optional] 
**duration_of_action** | **Float** | The amount of time over which a predictor/stimulus event can exert an observable influence on an outcome variable’s value. For instance, aspirin (stimulus/predictor) typically decreases headache severity for approximately four hours (duration of action) following the onset delay. | 
**effect** | **String** | Variable name of the effect variable for which the user desires correlations. | 
**effect_variable_category_name** | **String** | Variable category of the effect variable. | [optional] 
**effect_variable_image_url** | **String** |  | [optional] 
**effect_variable_ion_icon** | **String** | For use in Ionic apps | [optional] 
**effect_size** | **String** | Magnitude of the effects of a cause indicating whether it&#39;s practically meaningful. | [optional] 
**effect_variable_id** | **String** | Magnitude of the effects of a cause indicating whether it&#39;s practically meaningful. | [optional] 
**effect_variable_name** | **String** | Variable name of the effect variable for which the user desires correlations. | [optional] 
**gauge_image** | **String** | Illustrates the strength of the relationship | [optional] 
**image_url** | **String** | Large image for Facebook | [optional] 
**number_of_pairs** | **Float** | Number of points that went into the correlation calculation | 
**onset_delay** | **Float** | The amount of time in seconds that elapses after the predictor/stimulus event before the outcome as perceived by a self-tracker is known as the “onset delay”. For example, the “onset delay” between the time a person takes an aspirin (predictor/stimulus event) and the time a person perceives a change in their headache severity (outcome) is approximately 30 minutes. | 
**optimal_pearson_product** | **Float** | Optimal Pearson Product | [optional] 
**outcome_data_sources** | **String** | original name of the cause. | [optional] 
**predictor_explanation** | **String** | HIGHER Remeron predicts HIGHER Overall Mood | [optional] 
**principal_investigator** | **String** | Mike Sinn | [optional] 
**qm_score** | **Float** | Value representing the significance of the relationship as a function of crowdsourced insights, predictive strength, data quantity, and data quality | [optional] 
**reverse_correlation** | **Float** | Correlation when cause and effect are reversed. For any causal relationship, the forward correlation should exceed the reverse correlation. | [optional] 
**significance_explanation** | **String** | Using a two-tailed t-test with alpha &#x3D; 0.05, it was determined that the change... | [optional] 
**statistical_significance** | **String** | A function of the effect size and sample size | [optional] 
**strength_level** | **String** | weak, moderate, strong | [optional] 
**study_abstract** | **String** | These data suggest with a high degree of confidence... | [optional] 
**study_background** | **String** | In order to reduce suffering through the advancement of human knowledge... | [optional] 
**study_design** | **String** | This study is based on data donated by one QuantiModo user... | [optional] 
**study_limitations** | **String** | As with any human experiment, it was impossible to control for all potentially confounding variables... | [optional] 
**study_link_dynamic** | **String** | Url for the interactive study within the web app | [optional] 
**study_link_facebook** | **String** | Url for sharing the study on Facebook | [optional] 
**study_link_google** | **String** | Url for sharing the study on Google+ | [optional] 
**study_link_twitter** | **String** | Url for sharing the study on Twitter | [optional] 
**study_link_static** | **String** | Url for sharing the statically rendered study on social media | [optional] 
**study_objective** | **String** | The objective of this study is to determine... | [optional] 
**study_results** | **String** | This analysis suggests that... | [optional] 
**study_title** | **String** | N1 Study HIGHER Remeron predicts HIGHER Overall Mood | [optional] 
**timestamp** | **Float** | Time at which correlation was calculated | 
**updated_at** | **DateTime** | When the record in the database was last updated. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
**user_vote** | **Float** | User Vote | [optional] 
**value_predicting_high_outcome** | **Float** | cause value that predicts an above average effect value (in default unit for cause variable) | [optional] 
**value_predicting_high_outcome_explanation** | **String** | Overall Mood, on average, 34% HIGHER after around 3.98mg Remeron | [optional] 
**value_predicting_low_outcome** | **Float** | cause value that predicts a below average effect value (in default unit for cause variable) | [optional] 
**value_predicting_low_outcome_explanation** | **String** | Overall Mood, on average, 4% LOWER after around 0mg Remeron | [optional] 


