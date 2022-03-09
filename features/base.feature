Feature: The user is on a page that uses the navigation bar and it's utilities

Scenario: The user wants to create a new account
    Given the user clicks on the Register/ create account button
    Then they will be re-directed to the registration form


Scenario: The user wants to login to an existing account
    Given the user clicks on the Login button 
    Then they will be re-directed to the login form

Scenario: The user wants to log out of an existing account
    Given the user clicks on the Log-out button
    Then the users session will be destroyed
    And they will be redirected to the index/ home page

Scenario: The user wants to modify their account
    Given the user clicks on the Account settings button
    And the user is logged in
    Then the user will be re-directed to the account settings page
