  Given(/^I am on the home page$/) do
    visit root_path
  end

  When('I click on Add a Book') do
    click_on(id: 'add-a-book')
  end

  Then('I should be on the new book page') do
    # Form title
    expect(page).to have_content("New Book")
  end

  And('I should see book labels') do 
    # Form title
    expect(page).to have_content("Title")
    expect(page).to have_content("Description")
    expect(page).to have_content("Author")
  end

  And('I should see book fields') do
    page.find_field("title")
    page.find_field("description")
    page.find_field("author")
  end
