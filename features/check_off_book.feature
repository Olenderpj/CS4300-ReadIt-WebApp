Feature: Checking Off Books
    As a user
    I want to
    So that

Scenario: The user checks off a read book
    Given: The user is on the home page
    When: The user checks it as completed
    Then: The book should be added to the read list

Scenario: The user adds books from search
    Given: The user is on search results page
    When: The user checks it as completed
    Then: The book should be added to the read list

Scenario: The user can't add book to read list
    Given: The user is on the home page
    When: The user checks it as completed
    And: There is an error with the route
    Then: The page should raise an error to the user