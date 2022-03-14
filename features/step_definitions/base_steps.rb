When (/^I follow "Register"$/) do
    visit "/users/sign_up"
end

Then(/^I should see the registration form$/) do
    expect(page).to have_content "Register"
end
#---------------------------------------------

When (/^the user clicks on the Login button$/) do
    visit "/users/sign_in"
end

Then (/^they will be re-directed to the login form$/) do
    expect(page).to have_content "Log in"
end

#---------------------------------------------

When(/^the user clicks on the Account settings button$/) do
    visit '/users/edit'
end

Then (/^the user will be re-directed to the account settings page$/) do
    expect(page).to have_content "Edit User"
end