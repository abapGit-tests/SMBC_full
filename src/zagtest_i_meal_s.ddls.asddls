@EndUserText.label: 'Meal Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZAGTEST_I_Meal_S
  as select from I_Language
    left outer join ZAGTEST_MEAL on 0 = 0
  composition [0..*] of ZAGTEST_I_Meal as _Meal
{
  key 1 as SingletonID,
  _Meal,
  max( ZAGTEST_MEAL.LAST_CHANGED_AT ) as LastChangedAtMax,
  cast( '' as SXCO_TRANSPORT) as TransportRequestID,
  cast( 'X' as ABAP_BOOLEAN preserving type) as HideTransport
  
}
where I_Language.Language = $session.system_language
