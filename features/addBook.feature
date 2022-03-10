Feature: add quick book to read-it 
  As a user 
  So that I can easily add a book-to-read to my list
  I want a really quick way to add a book to the database

Scenario: Display book edit form
  Given I am on the home page
  When I click on the Add a Book button
  Then I should be on the New Book Page

Scenario: Checked to_read_list_flag
  Given I am on the New Book page
  When I click on the to_read_list_flag 
  Then the to_read_list_flag field is set to checked

Scenario: Submit a book
  Given I am on the New Book page
  When I fill in the book_title field with "Hidden Figures"
  And I click on the Submit button
  Then I should be on the home page