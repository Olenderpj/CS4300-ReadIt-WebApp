Feature: Index Page
    There should be clickable cards

Scenario: The user is on the home page
    When The user is on the home page

Scenario: The user is interacting with an individual book card and wants to read more
    When the Read More button is clicked
    Then the user should be redirected to a page with more book information

Scenario: The user is interactiong with an individual book card and wants to purchase the book
    Given the user is interacting with the card
    When the Buy on Amazon button is clicked
    Then the user should eb redirected to an external website

    



