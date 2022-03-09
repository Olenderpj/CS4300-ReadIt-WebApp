Feature: add quick book to read-it 
  As a user 
  So that I can easily add a book-to-read to my list
  I want a really quick way to add a book to the database
Scenario: Add a quick book
  Given I am on the Read-it home page
  When I click on the Add a Book button
  Then I should be on the New Book page
  And the to_read_list_flag field is set to checked
  When I fill in the book_title field with "Hidden Figures"
  And I click on the Submit button
  Then I should be back on the Read-it home page