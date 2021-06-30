Feature: To send post request

  Background: To send post
    Given url 'https://rahulshettyacademy.com'
    * def testData = read('TestData.csv')

  #* def f = read('requestBody2.json')
  #Scenario Outline: to send post request <Name>
    #Given path '/maps/api/place/add/json'
    #And headers {"key" : "qaclick123","Content-Type" : "application/json","Accept" : "application/json"}
    #And request {"location":{"lat": '#(latitude)',"lng": '#(longitude)'},"accuracy":'#(acc)',"name":'#(Name)',"phone_number":'#(Phone)',"address":'#(address)',"types":["shoe park","shopERS"],"website":"http:\/\/google.com","language":"French-IN"}
    #When method post
    #And status <status>
    #Then print response
#
    #Examples: 
      #| latitude   | longitude | acc | Name       | Phone              | address                    | status |
      #| -54.383455 | 33.427362 |  40 | Frontline  | (+91) 983 893 3937 | 29, side layout, cohen 09  |    200 |
      #| -43.383455 | 33.427362 |  40 | Frontline2 | (+91) 983 893 3937 | 29, side layout, cohen 092 |    200 |
      #| -28.383455 | 33.427362 |  40 | Frontline3 | (+91) 983 893 3937 | 29, side layout, cohen 092 |    200 |

  Scenario Outline: to send post request by CSV files <Name>
    Given path '/maps/api/place/add/json'
    And headers {"key" : "qaclick123","Content-Type" : "application/json","Accept" : "application/json"}
    And request {"location":{"lat": '#(latitude)',"lng": '#(longitude)'},"accuracy":50,"name": '#(Name)',"phone_number": '#(Phone)',"address": '#(address)',"types":["shoe park","shopERS"],"website":"http:\/\/google.com","language":"French-IN"}
    When method post
    And status 200
    Then print response
    And print testData

    Examples: 
      | testData |
