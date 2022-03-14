Feature: add book to read-it 
  As a user 
  So that I can easily add a book-to-read to my list
  I want a really quick way to add a book to the database

@addBook
Scenario: Display book page
  Given I am on the home page
  When I click on Add a Book
  Then I should be on the new book page

@addBook
Scenario: Display book page labels and fields
  Given I am on the new book page
  Then page should have Title label
  And page should have title field
  And page should have Author label
  And page should have author field
  And page should have Description label
  And page should have description field
  And page should have To Read List label
  And page should have to_read_list_flag checkbox
  And page should have Personal Library label
  And page should have personal_library_flag checkbox

@addBook
Scenario: Add book to to-read-list
  Given I am on the new book page
  When I click on isInReadingList
  Then the isInReadingList field is set to checked

Scenario: Set book type to Personal Library Book
  Given I am on the new book page
  When I click on the personal_library_flag 
  Then the personal_library_flag field is set to checked

Scenario: Create a book
  Given I am on the new book page
  When I fill in the title field with "Hidden Figures"
  And I click on the Create button
  Then I should be on the home page
  And I should see content "Hidden Figures"

Scenario: Cancel a new book
  Given I am on the Book page
  When I click on the Back to Home button
  Then I should be on the home page  