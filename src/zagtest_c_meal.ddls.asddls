@EndUserText.label: 'Maintain Meal'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZAGTEST_C_Meal
  as projection on ZAGTEST_I_Meal
{
  key MealNumber,
  MealType2,
  LastChangedAt,
  @Consumption.hidden: true
  LocalLastChangedAt,
  @Consumption.hidden: true
  SingletonID,
  _MealAll : redirected to parent ZAGTEST_C_Meal_S,
  _MealText : redirected to composition child ZAGTEST_C_MealText,
  _MealText.MealText : localized
  
}
