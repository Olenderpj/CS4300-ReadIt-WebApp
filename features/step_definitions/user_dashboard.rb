
#--Navigation
When(/^the user is on the homepage and the user is logged in$/) do
    
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
end

And(/^the user clicks on Dashboard$/) do
    click_on("Account Settings")
end

Then(/^the user should be able to see their dashboard$/) do
    expect(page).to have_content("Manage My Account")
end

#--- Visible Elements
When(/^the user is viewing the dashboard$/) do
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
    visit edit_user_registration_path
end


And(/^the user should see settings$/) do
    expect(page).to have_content("First Name")
    expect(page).to have_content("Last Name")
    expect(page).to have_content("Email Address")
    expect(page).to have_content("New Password")
end

And(/^the user should see their profile photo$/) do
    expect(page).to have_xpath("//img[contains(@src,'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png')]")
end
