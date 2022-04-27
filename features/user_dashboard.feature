
Feature: User Dashboard
    The user should be able to view their dashboard/ settings

Scenario: The user navigates to the dashboard from the homepage
    When the user is on the homepage and the user is logged in
    And the user clicks on Dashboard
    Then the user should be able to see their dashboard

Scenario: The user should have visible elements on their dashboard
    When the user is viewing the dashboard
    And the user should see settings
    And the user should see their profile photo