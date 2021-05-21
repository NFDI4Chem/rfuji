# rfuji::DataAccessLevel


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**metric_identifier** | **character** |  | 
**metric_name** | **character** |  | 
**metric_tests** | [**map(FAIRResultEvaluationCriterium)**](FAIRResultEvaluationCriterium.md) |  | [optional] 
**test_status** | **character** |  | [default to &#39;fail&#39;]
**score** | [**FAIRResultCommonScore**](FAIRResultCommon_score.md) |  | 
**maturity** | **character** |  | [optional] [default to &#39;incomplete&#39;]
**output** | [**DataAccessOutput**](DataAccess_output.md) |  | [optional] 
**test_debug** | **array[character]** |  | [optional] 


