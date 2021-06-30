Feature: To Test Get

  Background: For setting background
    Given url "https://rahulshettyacademy.com"
    * def var = read('../requestBody.json')
    And print "+++++++++++++ This is background++++++++++++++"
    

  Scenario: To tests get method
    Given path "/maps/api/place/add/json"
    And request var
    And headers {Accept : 'application/json', Content-Type : 'application/json', key : 'qaclick123'}
    When method post
    Then status 200
    And print response
    * def res = response.place_id
    And print res
      