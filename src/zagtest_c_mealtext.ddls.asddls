@EndUserText.label: 'Maintain Meal Text'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZAGTEST_C_MealText
  as projection on ZAGTEST_I_MealText
{
  @ObjectModel.text.element: [ 'LanguageName' ]
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_Language', 
      element: 'Language'
    }
  } ]
  key Language,
  key MealNumber,
  MealText,
  @Consumption.hidden: true
  LocalLastChangedAt,
  @Consumption.hidden: true
  SingletonID,
  _LanguageText.LanguageName : localized,
  _Meal : redirected to parent ZAGTEST_C_Meal,
  _MealAll : redirected to ZAGTEST_C_Meal_S
  
}
