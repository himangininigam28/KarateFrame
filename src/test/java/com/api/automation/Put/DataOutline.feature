Feature: To send post request

  Background: To send post
    Given url 'https://rahulshettyacademy.com'

  #* def testData = read('TestData.csv')
  Scenario: to send put request
    Given path '/maps/api/place/update/json'
    And headers {"Content-Type" : "application/json","Accept" : "application/json"}
    And request {"place_id":"978988c919b0fd30324afc55bb214ffe","address":"70 Summer walk, USA","key":"qaclick123"}
    When method put
    And status 200
    Then print response

