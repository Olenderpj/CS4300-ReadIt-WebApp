Feature: Checking Off Books
    As a user
    So that I can track what books I have read
    I want to check off completed books

Scenario: The user checks off a read book
    Given: The user is on the home page
    When: The user checks it as completed
    Then: The book should be added to the read list

Scenario: The user adds books from search
    Given: The user is on search results page
    When: The user checks it as completed
    Then: The book should be added to the read list

Scenario: The user can check off any book
    Given: The user is on the home page
    When: The user checks all books in their to-read list
    Then: The read list should contain all books listed before

Scenario: The user can't add book to read list
    Given: The user is on the home page
    When: The user checks it as completed
    And: There is an error with the route
    Then: The page should raise an error to the user