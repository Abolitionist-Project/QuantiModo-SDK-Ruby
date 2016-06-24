# SwaggerClient::Connection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | id | [optional] 
**user_id** | **Integer** | ID of user that owns this correlation | [optional] 
**connector_id** | **Integer** | The id for the connector data source for which the connection is connected | 
**connect_status** | **String** | Indicates whether a connector is currently connected to a service for a user. | [optional] 
**connect_error** | **String** | Error message if there is a problem with authorizing this connection. | [optional] 
**update_requested_at** | **DateTime** | Time at which an update was requested by a user. | [optional] 
**update_status** | **String** | Indicates whether a connector is currently updated. | [optional] 
**update_error** | **String** | Indicates if there was an error during the update. | [optional] 
**last_successful_updated_at** | **DateTime** | The time at which the connector was last successfully updated. | [optional] 
**created_at** | **DateTime** | When the record was first created. Use ISO 8601 datetime format | [optional] 
**updated_at** | **DateTime** | When the record in the database was last updated. Use ISO 8601 datetime format | [optional] 


