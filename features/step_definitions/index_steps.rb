When (/^The user is on the home page$/) do
    visit root_path
end

Then (/^the page should have the content "Read More"$/) do
  expect(page).to have_content "Read More"
end

And (/^the page should have "Buy on Amazon"$/) do
  expect(page).to have_content "Buy on Amazon"
end

#---------------------------------------------

When (/^the Read More button is clicked$/) do

end

Then (/^the user should be redirected to a page with more book information$/) do
end

#---------------------------------------------

When (/^the Buy on Amazon button is clicked$/) do

end

Then (/^the user should be redirected to an external website$/) do

end




