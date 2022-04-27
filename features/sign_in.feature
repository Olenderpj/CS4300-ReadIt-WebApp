Feature: Sign-In page
    There should be a form with a username, password fields as well as a submission box

Scenario: The user wants to login
    When The user is on the homepage
    And they click on Sign-In
    Then the should be redirected to the Sign-In Form

Scenario: The user submits the login form with VALID credentials
    When The user successfully signs in with valid credentials
    Then The user should be directed to the home page
    And the user should see a welcome message of Manage My Account

Scenario: The user submits the login form with INVALID credentials
    When The user enters their invlaid credentials
    Then They should see an invalid credentials Error message pop up