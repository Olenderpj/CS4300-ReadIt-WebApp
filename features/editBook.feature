Feature: edit book in read-it 
  As a user 
  So that I can change information about a book 
  I need to be able to edit a book on the list

Scenario: Click on Edit Button
  Given I am on the home page
  When I click on the edit button for the book Hidden Figures
  Then I should be on the Edit Book page 
  And the title field should have content Hidden Figures

Scenario: Submit a book edit
  Given I have clicked on the edit button for the book Hidden Figures
  And I am on the Edit Book page
  When I fill in the description field with Amazing true story about gender and race-based descrimination
  And I click on the Update button
  Then I should go from edit book page to home page
  And I should see content Amazing true story