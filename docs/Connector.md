# SwaggerClient::Connector

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Connector ID number | 
**name** | **String** | Connector lowercase system name | 
**display_name** | **String** | Connector pretty display name | 
**image** | **String** | URL to the image of the connector logo | 
**get_it_url** | **String** | URL to a site where one can get this device or application | 
**connected** | **String** | True if the authenticated user has this connector enabled | 
**connect_instructions** | **String** | URL and parameters used when connecting to a service | 
**last_update** | **Integer** | Epoch timestamp of last sync | 
**total_measurements_in_last_update** | **Integer** | Number of measurements obtained during latest update | 
**no_data_yet** | **BOOLEAN** | True if user has no measurements for this connector | 


