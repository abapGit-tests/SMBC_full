@EndUserText.label: 'Meal'
@AccessControl.authorizationCheck: #CHECK
define view entity ZAGTEST_I_Meal
  as select from zagtest_meal
  association to parent ZAGTEST_I_Meal_S as _MealAll on $projection.SingletonID = _MealAll.SingletonID
  composition [0..*] of ZAGTEST_I_MealText as _MealText
{
  key meal_number as MealNumber,
  meal_type as MealType2,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  1 as SingletonID,
  _MealAll,
  _MealText
  
}
