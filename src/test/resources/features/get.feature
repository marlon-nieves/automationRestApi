Feature: Information get individual user


  Scenario: Send information get individual user with response success
    Given Load customer information
    | id |
    | 1  |
    When Call get user API
    Then Should see the status code 200
    And Validate quantity key is 2
    And Validate schema response "GetJsonSchema"
    And Validate fields get response api
    And Validate get response contaion data expected