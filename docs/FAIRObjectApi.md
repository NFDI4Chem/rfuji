# FAIRObjectApi

All URIs are relative to *http://localhost:1071/fuji/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AssessById**](FAIRObjectApi.md#AssessById) | **POST** /evaluate | 


# **AssessById**
> FAIRResults AssessById(body=var.body)



Evaluate FAIRness of a data object based on its identifier

### Example
```R
library(rfuji)

var.body <- body$new("object_identifier_example", "test_debug_example", "metadata_service_endpoint_example", "metadata_service_type_example", "use_datacite_example", "oaipmh_endpoint_example") # Body | 

api.instance <- FAIRObjectApi$new()
# Configure HTTP basic authorization: basicAuth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$AssessById(body=var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](Body.md)|  | [optional] 

### Return type

[**FAIRResults**](FAIRResults.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |
| **400** | Invalid identifier supplied |  -  |
| **401** | Authentication information is missing or invalid |  * WWW_Authenticate -  <br>  |
| **404** | Object not found |  -  |

