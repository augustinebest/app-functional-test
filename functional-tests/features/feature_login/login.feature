Feature: User Login

  Scenario: Successful Login
    Given I navigate to the login page
    When I enter valid credentials
    Then I am redirected to the dashboard
