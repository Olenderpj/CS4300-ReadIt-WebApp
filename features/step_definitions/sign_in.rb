# The user wants to log in
When(/^The user is on the homepage$/) do
    visit root_path
end

And(/^they click on Sign-In$/) do
    click_on("Login")
    visit new_user_session_path
end

Then(/^the should be redirected to the Sign-In Form$/) do
    expect(page).to have_content("Sign In")
end


#--- Valid Form Sumbission

When(/^The user successfully signs in with valid credentials$/) do
    @user = User.create!({
        :email => "none@nomail.com",
        :password => "123456789",
        :password_confirmation => "123456789"
      })
      visit new_user_session_path

      fill_in "user[email]", with: "none@nomail.com"
      fill_in "user[password]", with: "123456789"
      click_button("Log in")

end

Then(/^The user should be directed to the home page$/) do
    expect(page).to have_content("My Menu")
end

And(/^the user should see a welcome message of Manage My Account$/) do
    expect(page).to have_content("Calendar")
end

#---- Invalid credentials

When(/^The user enters their invlaid credentials$/) do
    visit new_user_session_path
    fill_in "user[email]", with: "badEmailAddress"
    fill_in "user[password]", with: "111"
    click_on("Log in")
end

Then(/^They should see an invalid credentials Error message pop up$/) do
    expect(page).to have_content("Invalid Email or password")
end


