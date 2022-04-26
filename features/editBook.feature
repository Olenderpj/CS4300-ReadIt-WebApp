Feature: edit book in read-it 
  As a user 
  So that I can change information about a book 
  I need to be able to edit a book on the list

Scenario: Edit a Book
  Given I am on the home page
  When I click on the edit button
  Then I should be on the Edit Book page 

Scenario: Submit a book edit
  Given I am on the Edit Book page
  When I fill in the description field with This is a test of editing a book
  And I click on the Update button
  Then I should go from edit book page to home page
  And I should see content This is a test of editing a book