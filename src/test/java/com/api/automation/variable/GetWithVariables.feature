Feature: To Test Get

  Background: For setting background
    Given url "http://rahulshettyacademy.com"
    And print "+++++++++++++ This is background++++++++++++++"

  Scenario: To tests get method
    * def rtnValues =  call read('../PostValue.feature')
    Given print "Return values -> ",rtnValues.res
    #{ _url : "http://rahulshettyacademy.com", _path : "/maps/api/place/add/json" ,_name : "Sample Name"}
   # And path "/maps/api/place/get/json?place_id=",rtnValues.res,"&key=qaclick123"
   And path "/maps/api/place/get/json?place_id=29f3d7cdb9773cd7d2afdebc6f6abb9b&key=qaclick123"
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    * def res1 = read("../jsonResponse.json")
    And match response == res1
