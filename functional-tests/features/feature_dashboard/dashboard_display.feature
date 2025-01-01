Feature: User dashboard

  Scenario: Dashboard displays user details
    Given I have navigated to dashboard
    Then I should see the user name and password
