Feature: To Test Get

  Background: For setting background
    Given url "http://api.openweathermap.org"
    And print "+++++++++++++ This is background++++++++++++++"

  Scenario: To tests get method
    Given path "/data/2.5/weather?q=London&appid=bc850d93446a7acfbfaf1961adda6c75"
    And header Accept = 'application/xml'
    When method get
    Then status 200
    And print response
    And match response.weather[0].description == 'light rain'
    And match response.weather == '#[1]'
   
		And match response.weather[*] contains deep {"icon": "10d"}