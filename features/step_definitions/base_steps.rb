When (/^I follow "Register"$/) do
    visit "/users/sign_up"
end

Then(/^I should see the registration form$/) do
    expect(page).to have_content "Register"
end
#---------------------------------------------

When (/^the user clicks on the Login button$/) do
    visit new_user_session_path
end

Then (/^they will be re-directed to the login form$/) do
    expect(page).to have_content("Sign In")
end

#---------------------------------------------

When(/^the user clicks on the Account settings button$/) do
    @user = User.create!({
        :email => "none@nomail.com",
        :password => "123456789",
        :password_confirmation => "123456789"
      })
      visit new_user_session_path

      fill_in "user[email]", with: "none@nomail.com"
      fill_in "user[password]", with: "123456789"
      click_button("Log in")

      visit root_path

      click_button("Account Settings")
end

Then (/^the user will be re-directed to the account settings page$/) do
    expect(page).to have_content("First Name")
end

# -- User wants to log out of an existing account

When(/^the user clicks on the Log-out button$/) do
    visit destroy_user_session_path
    visit root_path
end

Then(/^they will be redirected to the index home page$/) do
    expect(page).to have_content("Main Menu")
end



