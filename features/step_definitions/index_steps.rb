When (/^The user is on the home page$/) do
  visit root_path
  visit new_user_session_path
  @user = User.create!({
    :email => "none@nomail.com",
    :password => "123456789",
    :password_confirmation => "123456789"
  })
  

  fill_in "user[email]", with: "none@nomail.com"
  fill_in "user[password]", with: "123456789"
  click_button("Log in")
  
  visit root_path
  
  @book = Book.create!({
      :id => 1,
      :title => "Harry Potter",
      :author => "J.K. Rowling",
      :description => "Some Description",
    })
    
    visit root_path
end

Then (/^the page should have the content "Read More"$/) do
  
  expect(page).to have_content("Read More")
end

And (/^the page should have "Buy on Amazon"$/) do
  expect(page).to have_content("Buy on Amazon")
end

#---------------------------------------------

When (/^the Read More button is clicked$/) do
  click_on("Read More")
end

Then (/^the user should be redirected to a page with more book information$/) do
  expect(page).to have_content("Progress")
end

#---------------------------------------------

When (/^the Buy on Amazon button is clicked$/) do

end

Then (/^the user should be redirected to an external website$/) do

end




