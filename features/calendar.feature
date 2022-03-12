Feature: Calendar of deadlines/books to read
  I want to see the deadlines in a calendar view.

Scenario: View the calendar
  Given I am on the Read-it home page
  When I click on the calendar button
  Then I should be on the calendar page

Scenario: Adding a deadline
  Given I am on the calendar page
  When I click on any date
  Then I should be able to add a deadline

Scenario: Removing a deadline
  Given I am on the calendar page
  When I click on "Remove deadline"
  Then the deadline should be removed