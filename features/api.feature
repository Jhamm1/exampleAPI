# file: version.feature
Feature: get version
  In order to know godog version
  As an API user
  I need to be able to request version

  #Negative Scenario
  Scenario: does not allow POST method
    When I send "POST" request to "/version"
    Then the response code should be 405
    And the response should match json:
      """
      {
        "error": "Method not allowed"
      }
      """
#Positive Scenario
  Scenario: should get version number
    When I send "GET" request to "/message"
    Then the response code should be 200
    And the response should match json:
      """
      {
        "Message": "Hello world"
      }
      """
