Feature: test user management

  Background:
    * url baseUrl
    * def user_data = read('classpath:testData/user-'+environment+'.json')
    * def new_user_data = read('classpath:testData/new_user-'+environment+'.json')
    * def update_user_data = read('classpath:testData/update_user-'+environment+'.json')
    * def non_existing_user = 'NonExistingUser'
    * def result = call read('classpath:common/login.feature')
    # This token can be used in case of required 
    * print result.token  
  
  Scenario: get existing user 

    Given path userUrl
    And request new_user_data
    When method post
    Then status 200

    Given path userUrl, new_user_data.username
    When method get
    Then status 200
    And match response contains new_user_data

  Scenario: get non existing user 

    Given path userUrl, non_existing_user
    When method get
    Then status 404

  Scenario: update existing user
    Given path userUrl
    And request new_user_data
    When method post
    Then status 200

    Given path userUrl, new_user_data.username
    And request update_user_data
    When method put
    Then status 200
    And match response contains update_user_data

  Scenario: update non existing user

    Given path userUrl,  non_existing_user
    And request user_data
    When method put
    Then status 404

  Scenario: delete existing user

    Given path userUrl
    And request new_user_data
    When method post
    Then status 200

    Given path userUrl, new_user_data.username
    When method delete
    Then status 200

  Scenario: delete existing user

    Given path userUrl,  non_existing_user
    When method delete
    Then status 404