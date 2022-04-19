  
  Given(/^I am on the home page$/) do
    visit root_path
  end

  When('I click on the edit button') do
    click_on(id: 'edit-book')
  end

  Then('I should be on the Edit Book page') do
    expect(page).to have_content("Edit Book")
  end

  Given('I am on the Edit Book page') do
    visit root_path
    click_on(id: 'edit-book')
  end

  When('I fill in the description field with This is a test of editing a book') do
    fill_in 'description', with: 'This is a test of editing a book'
  end

  And('I click on the Update button') do 
    click_on(id: 'Update')
  end

  Then('I should go from edit book page to home page') do
    expect(page).to have_content("Main Menu") # workaround
  end

  And('I should see content This is a test of editing a book') do 
    expect(page).to have_content("This is a test of editing a book")
  end
