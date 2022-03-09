  Given(/^I am on the home page$/) do
    visit root_path
  end
  
  When(/^I click on the Add a Book button$/) do
    click_on "add-a-book-button"
  end
  
  Then(/^I should be on the New Book page$/) do
    # Form title
    expect(page).to have_content("New Book Page")

    # Input field labels
    expect(page).to have_content("Book Title")
    expect(page).to have_content("Book Description")

    # Input fields
    expect(page).to have_field("book_title")
    expect(page).to have_field("book_descriptions")

  end