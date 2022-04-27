When (/^the user is on the homepage$/) do
    visit root_path
    expect(page).to have_content "Login"
    expect(page).to have_content "Register"
end

And (/^they click on "Sign-In"$/) do
    visit new_user_session_path
end

Then (/^the should be redirected to the "Sign-In Form"$/) do
    expect(page).to have_content "Sign In"
    expect(page).to have_content "Email"
    expect(page).to have_content "Password"
    expect(page).to have_content "Log in"
    expect(page).to have_content "Forgot Password?"
    expect(page).to have_content "Home"
end
When (/^the user successfully signs in with valid credentials$/) do
end
Then (/^the user should be directed to the home page$/) do
end
And (/^the user should see a welcome message of "Manage My Account"$/) do
end
When (/^the user enters their invlaid credentials$/) do
end
Then (/^they should see an invalid credentials Error message pop up$/) do
end