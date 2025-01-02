Feature: Dashboard Order

  Scenario: Displays current and previous orders
    When I have accessed the dashboard as a "user" with orders status "<has previous orders>"
    Then I can see the current orders "<can see previous orders>"

    Examples:
      | has previous orders     | can see previous orders |
      | with previous orders    | and previous orders     |
      | without previous orders | only current orders     |
