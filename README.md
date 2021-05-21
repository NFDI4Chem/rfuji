# R API client for F-UJI

F-UJI is a Service for Evaluating Research Data Objects Based on <a href ='https://doi.org/10.5281/zenodo.3775793'>FAIRsFAIR Metrics</a>. <p> This work was supported by the <a href='https://www.fairsfair.eu/'>FAIRsFAIR</a> project (H2020-INFRAEOSC-2018-2020 Grant Agreement 831558).

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project. By using the [OpenAPI spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: 1.1.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RClientCodegen

## Installation

### Prerequisites

Install the dependencies

```R
install.packages("jsonlite")
install.packages("httr")
install.packages("base64enc")
```

### Build the package

```sh
git clone https://github.com/NFDI4Chem/rfuji
cd rfuji
R CMD build .
R CMD check rfuji_1.0.0.tar.gz --no-manual
R CMD INSTALL rfuji_1.0.0.tar.gz
```

### Install the package

```R
install.packages("rfuji")
```

To install directly from Github, use `devtools`:
```R
install.packages("devtools")
library(devtools)
install_github("GIT_USER_ID/GIT_REPO_ID")
```

### Usage

```R
library(rfuji)
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:1071/fuji/api/v1*
or the public https://seprojects.marum.de/fuji/api/v1/openapi.json

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*FAIRMetricApi* | [**GetMetrics**](docs/FAIRMetricApi.md#GetMetrics) | **GET** /metrics | Return all metrics and their definitions
*FAIRObjectApi* | [**AssessById**](docs/FAIRObjectApi.md#AssessById) | **POST** /evaluate |


## Documentation for Models

 - [Body](docs/Body.md)
 - [CommunityEndorsedStandard](docs/CommunityEndorsedStandard.md)
 - [CommunityEndorsedStandardAllOf](docs/CommunityEndorsedStandardAllOf.md)
 - [CommunityEndorsedStandardOutputInner](docs/CommunityEndorsedStandardOutputInner.md)
 - [CoreMetadata](docs/CoreMetadata.md)
 - [CoreMetadataAllOf](docs/CoreMetadataAllOf.md)
 - [CoreMetadataOutput](docs/CoreMetadataOutput.md)
 - [DataAccessLevel](docs/DataAccessLevel.md)
 - [DataAccessLevelAllOf](docs/DataAccessLevelAllOf.md)
 - [DataAccessOutput](docs/DataAccessOutput.md)
 - [DataContentMetadata](docs/DataContentMetadata.md)
 - [DataContentMetadataAllOf](docs/DataContentMetadataAllOf.md)
 - [DataContentMetadataOutput](docs/DataContentMetadataOutput.md)
 - [DataContentMetadataOutputInner](docs/DataContentMetadataOutputInner.md)
 - [DataFileFormat](docs/DataFileFormat.md)
 - [DataFileFormatAllOf](docs/DataFileFormatAllOf.md)
 - [DataFileFormatOutputInner](docs/DataFileFormatOutputInner.md)
 - [DataProvenance](docs/DataProvenance.md)
 - [DataProvenanceAllOf](docs/DataProvenanceAllOf.md)
 - [DataProvenanceOutput](docs/DataProvenanceOutput.md)
 - [DataProvenanceOutputInner](docs/DataProvenanceOutputInner.md)
 - [FAIRResultCommon](docs/FAIRResultCommon.md)
 - [FAIRResultCommonScore](docs/FAIRResultCommonScore.md)
 - [FAIRResultEvaluationCriterium](docs/FAIRResultEvaluationCriterium.md)
 - [FAIRResults](docs/FAIRResults.md)
 - [FormalMetadata](docs/FormalMetadata.md)
 - [FormalMetadataAllOf](docs/FormalMetadataAllOf.md)
 - [FormalMetadataOutputInner](docs/FormalMetadataOutputInner.md)
 - [IdentifierIncluded](docs/IdentifierIncluded.md)
 - [IdentifierIncludedAllOf](docs/IdentifierIncludedAllOf.md)
 - [IdentifierIncludedOutput](docs/IdentifierIncludedOutput.md)
 - [IdentifierIncludedOutputInner](docs/IdentifierIncludedOutputInner.md)
 - [License](docs/License.md)
 - [LicenseAllOf](docs/LicenseAllOf.md)
 - [LicenseOutputInner](docs/LicenseOutputInner.md)
 - [MetadataPreserved](docs/MetadataPreserved.md)
 - [MetadataPreservedAllOf](docs/MetadataPreservedAllOf.md)
 - [MetadataPreservedOutput](docs/MetadataPreservedOutput.md)
 - [Metric](docs/Metric.md)
 - [Metrics](docs/Metrics.md)
 - [OutputCoreMetadataFound](docs/OutputCoreMetadataFound.md)
 - [OutputSearchMechanisms](docs/OutputSearchMechanisms.md)
 - [Persistence](docs/Persistence.md)
 - [PersistenceAllOf](docs/PersistenceAllOf.md)
 - [PersistenceOutput](docs/PersistenceOutput.md)
 - [RelatedResource](docs/RelatedResource.md)
 - [RelatedResourceAllOf](docs/RelatedResourceAllOf.md)
 - [RelatedResourceOutputInner](docs/RelatedResourceOutputInner.md)
 - [Searchable](docs/Searchable.md)
 - [SearchableAllOf](docs/SearchableAllOf.md)
 - [SearchableOutput](docs/SearchableOutput.md)
 - [SemanticVocabulary](docs/SemanticVocabulary.md)
 - [SemanticVocabularyAllOf](docs/SemanticVocabularyAllOf.md)
 - [SemanticVocabularyOutputInner](docs/SemanticVocabularyOutputInner.md)
 - [StandardisedProtocolData](docs/StandardisedProtocolData.md)
 - [StandardisedProtocolDataAllOf](docs/StandardisedProtocolDataAllOf.md)
 - [StandardisedProtocolDataOutput](docs/StandardisedProtocolDataOutput.md)
 - [StandardisedProtocolMetadata](docs/StandardisedProtocolMetadata.md)
 - [StandardisedProtocolMetadataAllOf](docs/StandardisedProtocolMetadataAllOf.md)
 - [StandardisedProtocolMetadataOutput](docs/StandardisedProtocolMetadataOutput.md)
 - [Uniqueness](docs/Uniqueness.md)
 - [UniquenessAllOf](docs/UniquenessAllOf.md)
 - [UniquenessOutput](docs/UniquenessOutput.md)


## Documentation for Authorization


### basicAuth

- **Type**: HTTP basic authentication



## Author(s)
sneumann@ipb-halle.de
rhuber@uni-bremen.de
anusuriya.devaraju@googlemail.com