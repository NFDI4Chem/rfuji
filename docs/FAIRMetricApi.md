# FAIRMetricApi

All URIs are relative to *http://localhost:1071/fuji/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetMetrics**](FAIRMetricApi.md#GetMetrics) | **GET** /metrics | Return all metrics and their definitions


# **GetMetrics**
> Metrics GetMetrics()

Return all metrics and their definitions

### Example
```R
library(rfuji)


#Return all metrics and their definitions
api.instance <- FAIRMetricApi$new()
# Configure HTTP basic authorization: basicAuth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetMetrics()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Metrics**](Metrics.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Metrics are successfully retrieved |  -  |
| **400** | Invalid request supplied |  -  |
| **401** | Authentication information is missing or invalid |  * WWW_Authenticate -  <br>  |
| **404** | Object not found |  -  |

