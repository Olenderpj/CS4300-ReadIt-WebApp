Feature: add book to read-it 
  As a user 
  So that I can add or change information about a book 
  I need to be able to edit a book on the list

Scenario: Edit Button 
  Given a list of books is displayed
  When I choose a book
  Then I should be able to click on an edit book button

Scenario: Click on Edit Button
  Given A list of books is displayed
  When I click on the Edit Book button for the "Hidden Figures" book
  Then I should be on the Book page 
  And the Title field should have content "Hidden Figures"

Scenario: Submit a book edit
  Given I have clicked on the Edit Book button for the "Hidden Figures" book
  And I am on the Book page
  When I fill in the description field with "Amaging true story about gender and race-based descrimination"
  And I click on the Submit button
  Then the book list should display 
  And I should see content "Amazing true story"