# pet-store-api-test
technical test for N26 job application

Test are developed using Karate framework

There is no need to download or install any external library or package.

In order to run the tests you can do so by 

mvn test -Dtest=AllTestsRunner -DargLine="-Dkarate.env=local"

Where the karate.env variable can have "local", "dev", "qa"

I was about to integrate the code with CircleCI, so we can have the test running on a CI environment, but the version of the API on https://petstore.swagger.io/#/ is not the same version that you download and most of the endpoints fail.
But the project is ready for handling different environments

Note:  There is one test failing, the delete non existing user that according to the documentation, it should return 404 and is returning 200



