Feature: add book to read-it 
  As a user 
  So that I can easily add a book-to-read to my list
  I want a really quick way to add a book to the database

@addBook
Scenario: Display book page
  Given I am on the root page
  When I click on Add a Book
  Then I should be on the new book page
  And I should see book labels
  And I should see book fields

#@addBook
#Scenario: Display book page labels and fields BETTER
#  Given I have clicked on the Add a Book button
#  When I am on the new book page
#  Then I should see the following labels
#  | Title       |
#  | Author      | 
#  | Description |
#  And I should see the following fields 
#  | title       |
#  | author      |
#  | description |

@addBook
Scenario: Add book to to-read-list
  Given I am on the new book page
  When I click on isInReadingList
  Then the isInReadingList field is set to checked

@addBook
Scenario: Set book type to Personal Library Book
  Given I am on the new book page
  When I click on isInPersonalLibraryList 
  Then the isInPersonalLibraryList field is set to checked

@addBook
Scenario: Create a book
  Given I am on the new book page
  When I fill in the title field with "Hidden Figures"
  And I click on the Create button
  Then I should go from new book page to home page
  And I should see content "Hidden Figures"

@addBook
Scenario: Cancel a new book
  Given I am on the new book page
  When I click on the Back to Home button
  Then I should go from new book page to home page