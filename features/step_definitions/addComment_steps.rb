Given(/^User is on the home page$/) do
     visit '/'
end

When(/^I click on "Add Book"$/) do
  visit 'book/new'
end

Then(/^I should be on new book page$/) do
  # Form title
  expect(page).to have_content("New Book")
end

And(/^I should see a comment label$/) do 
  # Form title
  expect(page).to have_content("Comment")
end

And(/^I should see comment book field$/) do
  page.find_field("comment")
end

Given(/^User is back on the home page$/) do
     visit '/'
end

When(/^I click on "Edit Book"$/) do
  visit 'book/1/edit'
end

Then(/^I should be on edit book page$/) do
  # Form title
  expect(page).to have_content("Edit Book")
end

And(/^I should see comment label$/) do 
  # Form title
  expect(page).to have_content("Comment")
end

And(/^I should see a comment book field$/) do
  page.find_field("comment")
end