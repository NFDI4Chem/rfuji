# F-UJI
#
# A Service for Evaluating Research Data Objects Based on <a href ='https://doi.org/10.5281/zenodo.3775793'>FAIRsFAIR Metrics</a>. <p> This work was supported by the <a href='https://www.fairsfair.eu/'>FAIRsFAIR</a> project (H2020-INFRAEOSC-2018-2020 Grant Agreement 831558).
#
# The version of the OpenAPI document: 1.1.0
# Contact: anusuriya.devaraju@googlemail.com
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title DataProvenanceOutput
#'
#' @description DataProvenanceOutput Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field provenance_metadata_included  \link{DataProvenanceOutputInner} [optional]
#'
#' @field structured_provenance_available  \link{DataProvenanceOutputInner} [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DataProvenanceOutput <- R6::R6Class(
  'DataProvenanceOutput',
  public = list(
    `provenance_metadata_included` = NULL,
    `structured_provenance_available` = NULL,
    initialize = function(
        `provenance_metadata_included`=NULL, `structured_provenance_available`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`provenance_metadata_included`)) {
        stopifnot(R6::is.R6(`provenance_metadata_included`))
        self$`provenance_metadata_included` <- `provenance_metadata_included`
      }
      if (!is.null(`structured_provenance_available`)) {
        stopifnot(R6::is.R6(`structured_provenance_available`))
        self$`structured_provenance_available` <- `structured_provenance_available`
      }
    },
    toJSON = function() {
      DataProvenanceOutputObject <- list()
      if (!is.null(self$`provenance_metadata_included`)) {
        DataProvenanceOutputObject[['provenance_metadata_included']] <-
          self$`provenance_metadata_included`$toJSON()
      }
      if (!is.null(self$`structured_provenance_available`)) {
        DataProvenanceOutputObject[['structured_provenance_available']] <-
          self$`structured_provenance_available`$toJSON()
      }

      DataProvenanceOutputObject
    },
    fromJSON = function(DataProvenanceOutputJson) {
      DataProvenanceOutputObject <- jsonlite::fromJSON(DataProvenanceOutputJson)
      if (!is.null(DataProvenanceOutputObject$`provenance_metadata_included`)) {
        provenance_metadata_includedObject <- DataProvenanceOutputInner$new()
        provenance_metadata_includedObject$fromJSON(jsonlite::toJSON(DataProvenanceOutputObject$provenance_metadata_included, auto_unbox = TRUE, digits = NA))
        self$`provenance_metadata_included` <- provenance_metadata_includedObject
      }
      if (!is.null(DataProvenanceOutputObject$`structured_provenance_available`)) {
        structured_provenance_availableObject <- DataProvenanceOutputInner$new()
        structured_provenance_availableObject$fromJSON(jsonlite::toJSON(DataProvenanceOutputObject$structured_provenance_available, auto_unbox = TRUE, digits = NA))
        self$`structured_provenance_available` <- structured_provenance_availableObject
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`provenance_metadata_included`)) {
        sprintf(
        '"provenance_metadata_included":
        %s
        ',
        jsonlite::toJSON(self$`provenance_metadata_included`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`structured_provenance_available`)) {
        sprintf(
        '"structured_provenance_available":
        %s
        ',
        jsonlite::toJSON(self$`structured_provenance_available`$toJSON(), auto_unbox=TRUE, digits = NA)
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(DataProvenanceOutputJson) {
      DataProvenanceOutputObject <- jsonlite::fromJSON(DataProvenanceOutputJson)
      self$`provenance_metadata_included` <- DataProvenanceOutputInner$new()$fromJSON(jsonlite::toJSON(DataProvenanceOutputObject$provenance_metadata_included, auto_unbox = TRUE, digits = NA))
      self$`structured_provenance_available` <- DataProvenanceOutputInner$new()$fromJSON(jsonlite::toJSON(DataProvenanceOutputObject$structured_provenance_available, auto_unbox = TRUE, digits = NA))
      self
    }
  )
)
