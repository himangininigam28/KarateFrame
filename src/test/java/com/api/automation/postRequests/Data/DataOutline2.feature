Feature: To send post request

  Background: To send post
    Given url 'http://dummy.restapiexample.com'
    * def testData = read('TestData2.csv')

#  Scenario Outline: to send post request <name>
#    Given path '/api/v1/create'
#    And headers {"Content-Type" : "application/json","Accept" : "application/json"}
#    And request {"name": '#(name)',"salary":'#(salary)',"age":'#(age)'}
#    When method post
#    And status <Status>
#    Then print response
#
#    Examples: 
#      | name  | salary  | age | Status |
#      | Lijo  | 3213312 |  40 |    200 |
#      | Heena | 3123123 |  43 |    200 |

  Scenario Outline: to send post request <name>
    Given path '/api/v1/create'
    And headers {"Content-Type" : "application/json","Accept" : "application/json"}
    And request {"name": '#(name)',"salary":'#(salary)',"age":'#(age)'}
    When method post
    And status 200
    Then print response

    Examples: 
      | testData |
