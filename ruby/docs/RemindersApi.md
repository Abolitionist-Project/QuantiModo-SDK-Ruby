# SwaggerClient::RemindersApi

All URIs are relative to *https://app.quantimo.do/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_tracking_reminder_notifications_get**](RemindersApi.md#v1_tracking_reminder_notifications_get) | **GET** /v1/trackingReminderNotifications | Get specific pending tracking reminders
[**v1_tracking_reminder_notifications_skip_post**](RemindersApi.md#v1_tracking_reminder_notifications_skip_post) | **POST** /v1/trackingReminderNotifications/skip | Skip a pending tracking reminder
[**v1_tracking_reminder_notifications_snooze_post**](RemindersApi.md#v1_tracking_reminder_notifications_snooze_post) | **POST** /v1/trackingReminderNotifications/snooze | Snooze a pending tracking reminder
[**v1_tracking_reminder_notifications_track_post**](RemindersApi.md#v1_tracking_reminder_notifications_track_post) | **POST** /v1/trackingReminderNotifications/track | Track a pending tracking reminder
[**v1_tracking_reminders_delete_post**](RemindersApi.md#v1_tracking_reminders_delete_post) | **POST** /v1/trackingReminders/delete | Delete tracking reminder
[**v1_tracking_reminders_get**](RemindersApi.md#v1_tracking_reminders_get) | **GET** /v1/trackingReminders | Get repeating tracking reminder settings
[**v1_tracking_reminders_post**](RemindersApi.md#v1_tracking_reminders_post) | **POST** /v1/trackingReminders | Store a Tracking Reminder


# **v1_tracking_reminder_notifications_get**
> InlineResponse2002 v1_tracking_reminder_notifications_get(opts)

Get specific pending tracking reminders

Specfic pending reminder instances that still need to be tracked.  

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::RemindersApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56, # Integer | User's id
  variable_category_name: "variable_category_name_example", # String | Limit tracking reminder notifications to a specific variable category
  created_at: "created_at_example", # String | When the record was first created. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format. Time zone should be UTC and not local.
  updated_at: "updated_at_example", # String | When the record was last updated. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format. Time zone should be UTC and not local.
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  offset: 56, # Integer | OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  sort: "sort_example" # String | Sort by given field. If the field is prefixed with '-', it will sort in descending order.
}

begin
  #Get specific pending tracking reminders
  result = api_instance.v1_tracking_reminder_notifications_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RemindersApi->v1_tracking_reminder_notifications_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 
 **variable_category_name** | **String**| Limit tracking reminder notifications to a specific variable category | [optional] 
 **created_at** | **String**| When the record was first created. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
 **updated_at** | **String**| When the record was last updated. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **Integer**| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **String**| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_tracking_reminder_notifications_skip_post**
> CommonResponse v1_tracking_reminder_notifications_skip_post(body, opts)

Skip a pending tracking reminder

Deletes the pending tracking reminder

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::RemindersApi.new

body = SwaggerClient::TrackingReminderNotificationSkip.new # TrackingReminderNotificationSkip | Id of the pending reminder to be skipped or deleted

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Skip a pending tracking reminder
  result = api_instance.v1_tracking_reminder_notifications_skip_post(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RemindersApi->v1_tracking_reminder_notifications_skip_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TrackingReminderNotificationSkip**](TrackingReminderNotificationSkip.md)| Id of the pending reminder to be skipped or deleted | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_tracking_reminder_notifications_snooze_post**
> CommonResponse v1_tracking_reminder_notifications_snooze_post(body, opts)

Snooze a pending tracking reminder

Changes the reminder time to now plus one hour

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::RemindersApi.new

body = SwaggerClient::TrackingReminderNotificationSnooze.new # TrackingReminderNotificationSnooze | Id of the pending reminder to be snoozed

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Snooze a pending tracking reminder
  result = api_instance.v1_tracking_reminder_notifications_snooze_post(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RemindersApi->v1_tracking_reminder_notifications_snooze_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TrackingReminderNotificationSnooze**](TrackingReminderNotificationSnooze.md)| Id of the pending reminder to be snoozed | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_tracking_reminder_notifications_track_post**
> CommonResponse v1_tracking_reminder_notifications_track_post(body, opts)

Track a pending tracking reminder

Adds the default measurement for the pending tracking reminder with the reminder time as the measurment start time

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::RemindersApi.new

body = SwaggerClient::TrackingReminderNotificationTrack.new # TrackingReminderNotificationTrack | Id of the pending reminder to be tracked

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Track a pending tracking reminder
  result = api_instance.v1_tracking_reminder_notifications_track_post(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RemindersApi->v1_tracking_reminder_notifications_track_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TrackingReminderNotificationTrack**](TrackingReminderNotificationTrack.md)| Id of the pending reminder to be tracked | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_tracking_reminders_delete_post**
> CommonResponse v1_tracking_reminders_delete_post(body, opts)

Delete tracking reminder

Delete previously created tracking reminder

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::RemindersApi.new

body = SwaggerClient::TrackingReminderDelete.new # TrackingReminderDelete | Id of reminder to be deleted

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56 # Integer | User's id
}

begin
  #Delete tracking reminder
  result = api_instance.v1_tracking_reminders_delete_post(body, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RemindersApi->v1_tracking_reminders_delete_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TrackingReminderDelete**](TrackingReminderDelete.md)| Id of reminder to be deleted | 
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_tracking_reminders_get**
> InlineResponse200 v1_tracking_reminders_get(opts)

Get repeating tracking reminder settings

Users can be reminded to track certain variables at a specified frequency with a default value.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::RemindersApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56, # Integer | User's id
  variable_category_name: "variable_category_name_example", # String | Limit tracking reminders to a specific variable category
  created_at: "created_at_example", # String | When the record was first created. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format. Time zone should be UTC and not local.
  updated_at: "updated_at_example", # String | When the record was last updated. Use UTC ISO 8601 \"YYYY-MM-DDThh:mm:ss\"  datetime format. Time zone should be UTC and not local.
  limit: 56, # Integer | The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
  offset: 56, # Integer | OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
  sort: "sort_example" # String | Sort by given field. If the field is prefixed with '-', it will sort in descending order.
}

begin
  #Get repeating tracking reminder settings
  result = api_instance.v1_tracking_reminders_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RemindersApi->v1_tracking_reminders_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 
 **variable_category_name** | **String**| Limit tracking reminders to a specific variable category | [optional] 
 **created_at** | **String**| When the record was first created. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
 **updated_at** | **String**| When the record was last updated. Use UTC ISO 8601 \&quot;YYYY-MM-DDThh:mm:ss\&quot;  datetime format. Time zone should be UTC and not local. | [optional] 
 **limit** | **Integer**| The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records. | [optional] 
 **offset** | **Integer**| OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned. | [optional] 
 **sort** | **String**| Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **v1_tracking_reminders_post**
> InlineResponse2001 v1_tracking_reminders_post(opts)

Store a Tracking Reminder

This is to enable users to create reminders to track a variable with a default value at a specified frequency

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: access_token
  config.api_key['access_token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['access_token'] = 'Bearer'

  # Configure OAuth2 access token for authorization: quantimodo_oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::RemindersApi.new

opts = { 
  access_token: "access_token_example", # String | User's OAuth2 access token
  user_id: 56, # Integer | User's id
  body: SwaggerClient::TrackingReminder.new # TrackingReminder | TrackingReminder that should be stored
}

begin
  #Store a Tracking Reminder
  result = api_instance.v1_tracking_reminders_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RemindersApi->v1_tracking_reminders_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_token** | **String**| User&#39;s OAuth2 access token | [optional] 
 **user_id** | **Integer**| User&#39;s id | [optional] 
 **body** | [**TrackingReminder**](TrackingReminder.md)| TrackingReminder that should be stored | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[access_token](../README.md#access_token), [quantimodo_oauth2](../README.md#quantimodo_oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



