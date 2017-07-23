# SwaggerClient::TrackingReminderNotification

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | id for the specific PENDING tracking remidner | 
**tracking_reminder_id** | **Integer** | id for the repeating tracking remidner | 
**client_id** | **String** | clientId | [optional] 
**user_id** | **Integer** | ID of User | [optional] 
**variable_id** | **Integer** | Id for the variable to be tracked | [optional] 
**pending_reminder_time** | **DateTime** | UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  timestamp for the specific time the variable should be tracked in UTC.  This will be used for the measurement startTime if the track endpoint is used. | [optional] 
**default_value** | **Float** | Default value to use for the measurement when tracking | [optional] 
**reminder_sound** | **String** | String identifier for the sound to accompany the reminder | [optional] 
**pop_up** | **BOOLEAN** | True if the reminders should appear as a popup notification | [optional] 
**sms** | **BOOLEAN** | True if the reminders should be delivered via SMS | [optional] 
**email** | **BOOLEAN** | True if the reminders should be delivered via email | [optional] 
**notification_bar** | **BOOLEAN** | True if the reminders should appear in the notification bar | [optional] 
**updated_at** | **DateTime** | When the record in the database was last updated. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
**variable_name** | **String** | Name of the variable to be used when sending measurements | [optional] 
**variable_category_name** | **String** | Name of the variable category to be used when sending measurements | [optional] 
**unit_abbreviated_name** | **String** | Abbreviated name of the unit to be used when sending measurements | [optional] 
**combination_operation** | **String** | The way multiple measurements are aggregated over time | [optional] 


