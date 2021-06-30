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
    And match response ==
      """{
      "types": "shoe park,shop",
      "website": "http://google.com",
      "address": "29, side layout, cohen 09",
      "name": "Frontline house",
      "accuracy": "50",
      "location": {
      "latitude": "-38.383494",
      "longitude": "33.427362"
      },
      "phone_number": "(+91) 983 893 3937",
      "language": "French-IN"
      }
      """

  Scenario: To tests get method
    Given path "/maps/api/place/get/json?place_id=1492b52afbf7fd476ff2f3e6f52f5dc6&key=qaclick123"
    And header Accept = 'application/json'
    When method get
    Then status 200
    #And print response
    And match response.types =="shoe park,shop"

  Scenario: To tests get method
    Given path "/maps/api/place/get/json?place_id=1492b52afbf7fd476ff2f3e6f52f5dc6&key=qaclick123"
    And header Accept = 'application/json'
    When method get
    Then status 200
    #And print response
    And match response contains deep {"address": "29, side layout, cohen 09"}
    And match response contains deep {"location": {"latitude": "-38.383494"}}
    And match header Connection == 'Keep-Alive'
    And match header Content-Length == '257'

