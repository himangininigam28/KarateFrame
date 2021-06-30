Feature: To Test Get

  Background: To send post
    Given url 'https://rahulshettyacademy.com'
    * def testData = read('TestData.csv')

  Scenario Outline: To tests get method
    Given path '/maps/api/place/add/json'
    And headers {"key" : "qaclick123","Content-Type" : "application/json","Accept" : "application/json"}
    And request {"location":{"lat": "35.55555","lng": "35.55555"},"accuracy":50,"name": 'dasd',"phone_number": "7894561237","address":"dasdasda","types":["shoe park","shopERS"],"website":"http:\/\/google.com","language":"French-IN"}
    When method post
    And status 200
    Then print response
    * def res = response.place_id
    #And print testData

    Examples: 
      | testData |
