Given(/^I am on the Read-it home page$/) do
    visit root_path
end

When(/^I click on the calendar button$/) do
    click_on "view_calendar_button"
end

Then(/^I should be on the calendar page$/) do
    expect(page).to have_content("Your Reading Calendar")

    #input options
    expect(page).to have_content(date.today.strftime(%Y, %m, %d)))

    #input fields
    expect(page).to have_field("calendar-date")
end
    

