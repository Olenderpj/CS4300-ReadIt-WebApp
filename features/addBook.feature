Feature: add book to read-it 
  As a user 
  So that I can easily add a book-to-read to my list
  I want a really quick way to add a book to the database

Scenario: Display book page
  Given I am on the home page
  When I click on the Add a Book button
  Then I should be on the Book Page

Scenario: Display book page labels and fields
  Given I am on the Book Page
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

Scenario: Add book to to-read-list
  Given I am on the Book page
  When I click on the to_read_list_flag 
  Then the to_read_list_flag field is set to checked

Scenario: Set book type to Personal Library Book
  Given I am on the Book page
  When I click on the personal_library_flag 
  Then the personal_library_flag field is set to checked

Scenario: Submit a book
  Given I am on the Book page
  When I fill in the title field with "Hidden Figures"
  And I click on the Submit button
  Then I should be on the home page
  And I should see content "Hidden Figures"

Scenario: Cancel a book
  Given I am on the Book page
  When I click on the Cancel button
  Then I should be on the home page  