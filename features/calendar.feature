Feature: Calendar of deadlines/books to read
  I want to see the deadlines in a calendar view.
  As a user
  I want to see the deadlines in a calendar view.
  So that I can visualise the deadlines of books I want to read

Scenario: View the calendar
  When I click on the calendar button
  Then I should be on the calendar page

Scenario: Adding a deadline
  Given I am on the calendar page
  Then I should see a create event button
  When I click on the creat event button
  Then I should be on the create event page 

Scenario: Removing a deadline
  Given I am on the calendar page
  When I click on "Remove deadline"
  Then the deadline should be removed

