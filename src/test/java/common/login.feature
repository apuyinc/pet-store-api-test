Feature: Login tests

  Background:
    * url baseUrl
    * def login = read ('classpath:testData/login-'+environment+'.json')
    * def extractToken = function(text) { return text.split(" ").slice(-1) }

Scenario: Login successfull
Given path 'user', 'login'
And param username = login.username
And param password = login.password
When method get
Then status 200
* string str_response = response
* def token = extractToken (str_response)