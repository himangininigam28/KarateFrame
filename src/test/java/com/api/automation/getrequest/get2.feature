Feature: To Test Get

  Background: For setting background
    Given url "http://rahulshettyacademy.com"
    And print "+++++++++++++ This is background++++++++++++++"
    

  Scenario: To tests get method
    Given path "/maps/api/place/get/json?place_id=1492b52afbf7fd476ff2f3e6f52f5dc6&key=qaclick123"
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    * def res = read("../jsonResponse.json")
    And match response == res
      