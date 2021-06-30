Feature: To Test Get

  Background: For setting background
    Given url "https://rahulshettyacademy.com"
    And print "+++++++++++++ This is background++++++++++++++"

  Scenario: To tests get method
    Given path "/maps/api/place/add/json"
    * def getJobID = function() {return Math.floor((100) * Math.random());}

    And request { "location":{"lat":-38.383455,"lng":33.427362},"accuracy": '#(getJobID())',"name":"Frontline house","phone_number":"(+91) 983 893 3937","address":"29, side layout, cohen 09","types":["shoe park","shopERS"],"website":"http:\/\/google.com","language":"French-IN"}
    And headers {Accept : 'application/json', Content-Type : 'application/json', key : 'qaclick123'}
    When method post
    Then status 200
    And print response
    * def place_id1 = response.place_id
    And print place_id1
    Given url "http://rahulshettyacademy.com/maps/api/place/get/json"
    And param place_id = place_id1
    And param key = 'qaclick123'
    When method get
    Then print response