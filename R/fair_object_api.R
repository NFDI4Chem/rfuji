# F-UJI
#
# A Service for Evaluating Research Data Objects Based on <a href ='https://doi.org/10.5281/zenodo.3775793'>FAIRsFAIR Metrics</a>. <p> This work was supported by the <a href='https://www.fairsfair.eu/'>FAIRsFAIR</a> project (H2020-INFRAEOSC-2018-2020 Grant Agreement 831558).
#
# The version of the OpenAPI document: 1.1.0
# Contact: anusuriya.devaraju@googlemail.com
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title FAIRObject operations
#' @description rfuji.FAIRObject
#' @format An \code{R6Class} generator object
#' @field apiClient Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ AssessById } \emph{  }
#' Evaluate FAIRness of a data object based on its identifier
#'
#' \itemize{
#' \item \emph{ @param } body \link{Body}
#' \item \emph{ @returnType } \link{FAIRResults} \cr
#'
#'
#' \item status code : 200 | successful operation
#'
#' \item return type : FAIRResults 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Invalid identifier supplied
#'
#'
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 401 | Authentication information is missing or invalid
#'
#'
#' \item response headers :
#'
#' \tabular{ll}{
#' WWW_Authenticate \tab  \cr
#' }
#' \item status code : 404 | Object not found
#'
#'
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  AssessById  ####################
#'
#' library(rfuji)
#' var.body <- {"object_identifier":"https://doi.org/10.1594/PANGAEA.908011","test_debug":true,"metadata_service_endpoint":"http://ws.pangaea.de/oai/provider","metadata_service_type":"oai_pmh","use_datacite":true} # Body | 
#'
#' api.instance <- FAIRObjectApi$new()
#'
#' #Configure HTTP basic authorization: basicAuth
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' result <- api.instance$AssessById(body=var.body)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
FAIRObjectApi <- R6::R6Class(
  'FAIRObjectApi',
  public = list(
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    AssessById = function(body=NULL, ...){
      apiResponse <- self$AssessByIdWithHttpInfo(body, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    AssessByIdWithHttpInfo = function(body=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/evaluate"
      # HTTP basic auth
      headerParams['Authorization'] <- paste("Basic", base64enc::base64encode(charToRaw(paste(self$apiClient$username, self$apiClient$password, sep=":"))))

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "FAIRResults", loadNamespace("rfuji")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    }
  )
)
