Feature: Viewing reading progress and history
    As a user
    I want to
    So that I

Scenario: The user views their reading history
    Given: The user is on the history page
    When: The user has 1 or more read books
    Then: The visible books should match the list of read books

Scenario: The user has no read books
    Given: The user is on the history page
    When: The user has 0 read books
    Then: There should not be any book entries

Scenario: The user selects a book in their history
    Given: The user is on the history page
    When: The user has 1 or more read books
    And: The read more button is pushed
    Then: The user should be able to view details of book

Scenario: The user should see books sorted by when they were read
    Given: The user is on the history page
    When: The user has 1 or more read books
    Then: Books should be in order of most recently read

Scenario: The reading history can't be displayed
    Given: The user is on the history page
    When: The user has 1 or more read books
    And: The page is not displaying the correct number of books
    Then:The page shoudl raise an error to the user
