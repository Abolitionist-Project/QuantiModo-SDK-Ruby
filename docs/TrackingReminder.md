# SwaggerClient::TrackingReminder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | id | [optional] 
**client_id** | **String** | clientId | [optional] 
**user_id** | **Integer** | ID of User | [optional] 
**variable_id** | **Integer** | Id for the variable to be tracked | 
**default_value** | **Float** | Default value to use for the measurement when tracking | [optional] 
**reminder_start_time** | **String** | Earliest time of day at which reminders should appear in UTC HH:MM:SS format | [optional] 
**reminder_end_time** | **String** | Latest time of day at which reminders should appear in UTC HH:MM:SS format | [optional] 
**reminder_sound** | **String** | String identifier for the sound to accompany the reminder | [optional] 
**reminder_frequency** | **Integer** | Number of seconds between one reminder and the next | [optional] 
**pop_up** | **BOOLEAN** | True if the reminders should appear as a popup notification | [optional] 
**sms** | **BOOLEAN** | True if the reminders should be delivered via SMS | [optional] 
**email** | **BOOLEAN** | True if the reminders should be delivered via email | [optional] 
**notification_bar** | **BOOLEAN** | True if the reminders should appear in the notification bar | [optional] 
**last_reminded** | **DateTime** | ISO 8601 timestamp for the last time a reminder was sent | [optional] 
**last_tracked** | **DateTime** | ISO 8601 timestamp for the last time a measurement was received for this user and variable | [optional] 
**first_daily_reminder_time** | **String** | Specific first time of day that the user should be reminded to track in UTC HH:MM:SS format | [optional] 
**second_daily_reminder_time** | **String** | Specific second time of day that the user should be reminded to track in UTC HH:MM:SS format | [optional] 
**third_daily_reminder_time** | **String** | Specific third time of day that the user should be reminded to track in UTC HH:MM:SS format | [optional] 
**start_tracking_date** | **String** | Earliest date on which the user should be reminded to track in YYYY-MM-DD format | [optional] 
**stop_tracking_date** | **String** | Latest date on which the user should be reminded to track in YYYY-MM-DD format | [optional] 
**updated_at** | **DateTime** | When the record in the database was last updated. Use ISO 8601 datetime format. Time zone should be UTC and not local. | [optional] 
**variable_name** | **String** | Name of the variable to be used when sending measurements | [optional] 
**variable_category_name** | **String** | Name of the variable category to be used when sending measurements | [optional] 
**abbreviated_unit_name** | **String** | Abbreviated name of the unit to be used when sending measurements | [optional] 
**combination_operation** | **String** | The way multiple measurements are aggregated over time | [optional] 


