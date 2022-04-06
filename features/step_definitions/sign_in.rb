When (/^the user is on the homepage$/)
    visit root_path
    expect(page).to have_content "Login"
    expect(page).to have_content "Register"

And (/^they click on "Sign-In"$/)
    visit new_user_session_path

Then (/^the should be redirected to the "Sign-In Form"$/)
    expect(page).to have_content "Sign In"
    expect(page).to have_content "Email"
    expect(page).to have_content "Password"
    expect(page).to have_content "Log in"
    expect(page).to have_content "Forgot Password?"
    expect(page).to have_content "Home"

When (/^the user successfully signs in with valid credentials$/)

Then (/^the user should be directed to the home page$/)

And (/^the user should see a welcome message of "Manage My Account"$/)

When (/^the user enters their invlaid credentials$/)

Then (/^they should see an invalid credentials Error message pop up$/)