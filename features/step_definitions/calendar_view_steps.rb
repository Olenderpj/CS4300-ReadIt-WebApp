require "simple_calendar/month_calendar"

When(/^I click on the calendar button$/) do
    visit '/calendar'
end

Then(/^I should be on the calendar page$/) do 
    today = Date.today
    expect(page).to have_content(today)
    expect(page).to have_content(today.beginning_of_month)
    expect(page).to have_content(today.end_of_month)
end

Given('I am on the calendar page') do
    visit '/calendar'
end

Then('I should see a create event button') do
    expect(page). to have_content("Create New Event")
end

When (/^I click on the creat event button$/) do
    visit "meetings/new"
end

Then('I should be on the create event page') do
    expect(page). to have_content("New Event")
    expect(page).to have_field("meeting_name")
    expect(page).to have_field("meeting_start_time_1i")
    expect(page).to have_field("meeting_start_time_2i")
    expect(page).to have_field("meeting_start_time_3i")
    expect(page).to have_field("meeting_start_time_4i")
    expect(page).to have_field("meeting_start_time_5i")
end
    

