# F-UJI
#
# A Service for Evaluating Research Data Objects Based on <a href ='https://doi.org/10.5281/zenodo.3775793'>FAIRsFAIR Metrics</a>. <p> This work was supported by the <a href='https://www.fairsfair.eu/'>FAIRsFAIR</a> project (H2020-INFRAEOSC-2018-2020 Grant Agreement 831558).
#
# The version of the OpenAPI document: 1.1.0
# Contact: anusuriya.devaraju@googlemail.com
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title DataContentMetadataOutput
#'
#' @description DataContentMetadataOutput Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field object_type  character [optional]
#'
#' @field data_content_descriptor  list( \link{DataContentMetadataOutputInner} ) [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DataContentMetadataOutput <- R6::R6Class(
  'DataContentMetadataOutput',
  public = list(
    `object_type` = NULL,
    `data_content_descriptor` = NULL,
    initialize = function(
        `object_type`=NULL, `data_content_descriptor`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`object_type`)) {
        stopifnot(is.character(`object_type`), length(`object_type`) == 1)
        self$`object_type` <- `object_type`
      }
      if (!is.null(`data_content_descriptor`)) {
        stopifnot(is.vector(`data_content_descriptor`), length(`data_content_descriptor`) != 0)
        sapply(`data_content_descriptor`, function(x) stopifnot(R6::is.R6(x)))
        self$`data_content_descriptor` <- `data_content_descriptor`
      }
    },
    toJSON = function() {
      DataContentMetadataOutputObject <- list()
      if (!is.null(self$`object_type`)) {
        DataContentMetadataOutputObject[['object_type']] <-
          self$`object_type`
      }
      if (!is.null(self$`data_content_descriptor`)) {
        DataContentMetadataOutputObject[['data_content_descriptor']] <-
          lapply(self$`data_content_descriptor`, function(x) x$toJSON())
      }

      DataContentMetadataOutputObject
    },
    fromJSON = function(DataContentMetadataOutputJson) {
      DataContentMetadataOutputObject <- jsonlite::fromJSON(DataContentMetadataOutputJson)
      if (!is.null(DataContentMetadataOutputObject$`object_type`)) {
        self$`object_type` <- DataContentMetadataOutputObject$`object_type`
      }
      if (!is.null(DataContentMetadataOutputObject$`data_content_descriptor`)) {
        self$`data_content_descriptor` <- ApiClient$new()$deserializeObj(DataContentMetadataOutputObject$`data_content_descriptor`, "array[DataContentMetadataOutputInner]", loadNamespace("rfuji"))
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`object_type`)) {
        sprintf(
        '"object_type":
          "%s"
                ',
        self$`object_type`
        )},
        if (!is.null(self$`data_content_descriptor`)) {
        sprintf(
        '"data_content_descriptor":
        [%s]
',
        paste(sapply(self$`data_content_descriptor`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(DataContentMetadataOutputJson) {
      DataContentMetadataOutputObject <- jsonlite::fromJSON(DataContentMetadataOutputJson)
      self$`object_type` <- DataContentMetadataOutputObject$`object_type`
      self$`data_content_descriptor` <- ApiClient$new()$deserializeObj(DataContentMetadataOutputObject$`data_content_descriptor`, "array[DataContentMetadataOutputInner]", loadNamespace("rfuji"))
      self
    }
  )
)
