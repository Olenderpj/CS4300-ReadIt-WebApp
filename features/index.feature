Feature: Index Page
    There should be clickable cards

Scenario: The user is on the home page
    When The user is on the home page
    Then the page should have the content "Read More"
    And the page should have "Buy on Amazon"

Scenario: The user is interacting with an individual book card and wants to read more
    When the Read More button is clicked
    Then the user should be redirected to a page with more book information

Scenario: The user is interactiong with an individual book card and wants to purchase the book
    When the Buy on Amazon button is clicked
    Then the user should be redirected to an external website

    



