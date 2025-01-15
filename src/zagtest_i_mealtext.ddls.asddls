@EndUserText.label: 'Meal Text'
@AccessControl.authorizationCheck: #CHECK
@ObjectModel.dataCategory: #TEXT
define view entity ZAGTEST_I_MealText
  as select from ZAGTEST_MEALT
  association [1..1] to ZAGTEST_I_Meal_S as _MealAll on $projection.SingletonID = _MealAll.SingletonID
  association to parent ZAGTEST_I_Meal as _Meal on $projection.MealNumber = _Meal.MealNumber
  association [0..*] to I_LanguageText as _LanguageText on $projection.Language = _LanguageText.LanguageCode
{
  @Semantics.language: true
  key LANGUAGE as Language,
  key MEAL_NUMBER as MealNumber,
  @Semantics.text: true
  MEAL_TEXT as MealText,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  1 as SingletonID,
  _MealAll,
  _Meal,
  _LanguageText
  
}
