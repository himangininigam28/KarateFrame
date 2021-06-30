Feature: To Test Get

  Background: For setting background
    Given url uriForAllSCenarios
    And print "+++++++++++++ This is background++++++++++++++"
@Lodu @ignore
  Scenario: To tests get method
    Given path "/maps/api/place/get/json?place_id=1492b52afbf7fd476ff2f3e6f52f5dc6&key=qaclick123"
    And param place_id = '1492b52afbf7fd476ff2f3e6f52f5dc6'
    And param key = 'qaclick123'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response