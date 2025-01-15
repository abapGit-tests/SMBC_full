@EndUserText.label: 'Maintain Meal Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: [ 'SingletonID' ]
define root view entity ZAGTEST_C_Meal_S
  provider contract transactional_query
  as projection on ZAGTEST_I_Meal_S
{
  key SingletonID,
  LastChangedAtMax,
  TransportRequestID,
  HideTransport,
  _Meal : redirected to composition child ZAGTEST_C_Meal
  
}
