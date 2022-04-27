  Given(/^I am on the root page$/) do
     
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

  Given('I am on the new book page') do
    visit root_path
    click_on(id: 'add-a-book')
  end

  When('I click on isInReadingList') do
    check(id: 'isInReadingList')
  end

  Then('the isInReadingList field is set to checked') do 
    expect(page.find(id: "isInReadingList")).to be_checked
  end

  When('I click on isInPersonalLibraryList') do 
    check(id: 'isInPersonalLibraryList')
  end

  Then('the isInPersonalLibraryList field is set to checked') do 
    expect(page.find(id: "isInPersonalLibraryList")).to be_checked
  end

  When(/^I fill in the title field with "Hidden Figures"$/) do 
    fill_in 'title', with: 'Hidden Figures'
  end

  And('I click on the Create button') do
    click_on(id: 'Create')
  end

  Then('I should go from new book page to home page') do 
    #expect(page).to be_home_page  # this doesn't seem to work
    #expect(page).to be_root_path  # this doesn't seem to work either
    expect(page).to have_content("Main Menu") # workaround
  end

  And('I should see content "Hidden Figures"') do 
    expect(page).to have_content("Hidden Figures")
  end

  When('I click on the Back to Home button') do 
    click_on(id: 'back-to-home')
  end


