Feature: The user is on a page that uses the navigation bar and it's utilities

Scenario: create new account
    When I follow "Register"
    Then I should see the registration form

Scenario: User wants to login
    When the user clicks on the Login button 
    Then they will be re-directed to the login form

Scenario: The user wants to log out of an existing account
    When the user clicks on the Log-out button
    Then they will be redirected to the index home page

