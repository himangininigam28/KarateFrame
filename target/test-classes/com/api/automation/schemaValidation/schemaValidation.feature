Feature: To Test Get

  Background: For setting background
    Given url "http://rahulshettyacademy.com"
    And print "+++++++++++++ This is background++++++++++++++"

  Scenario: To tests get method
    Given path "/maps/api/place/get/json?place_id=1492b52afbf7fd476ff2f3e6f52f5dc6&key=qaclick123"
    And header Accept = 'application/json'
    When method get
    Then status 200
    * def subschema = {"latitude": '#string',"longitude": '#string'}
    And print "sub --- ",subschema
    * def mainSchema = {"types":'#string',"website":'#string',"address":'#string',"name":'#string',"accuracy":'#string',"location": '##(subschema)',"phone_number":'#string',"language":'#string'}
    And print "main --- ",mainSchema
    And print response
    And match response ==
      """
      '##(mainSchema)'
      """
