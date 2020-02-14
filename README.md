# pet-store-api-test
technical test for N26 job application

Tests are developed using Karate framework, was chosen because is easy to use, there is only the need to configure via maven or gradle and then you are ready to start writing your tests.

## How to run the tests:

mvn test -Dtest=AllTestsRunner -DargLine="-Dkarate.env=local"

Where the karate.env variable can have "local", "dev", "qa"

## Automated scenarios
The tests that I implemented were for /user endpoint, testing the create, update, get and delete operations (not all possible test scenarios were automated).
I also create a test for the login functionality that is able to login and retrieve the authorization token, this token can be used to call the rest of the endpoints that needs authentication, in this particular case, the token was not necessary.

I was about to integrate the code with CircleCI, so we can have the test running on a CI environment, but the version of the API on https://petstore.swagger.io/#/ is not the same version that you download and most of the endpoints fail.
But the project is ready for handling different environments

## Failing tests
There is one test failing, the delete non existing user that according to the documentation, it should return 404 and is returning 200



