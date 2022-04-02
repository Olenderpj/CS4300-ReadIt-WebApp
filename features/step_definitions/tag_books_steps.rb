Given('the following books are in database:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    table.hashes.each do |book|
      Book.create!(:title => book['title'],
        :author => book['author'],
        :genre => book['genre'],
        :tag_names => book['tag_names'])
    end
end
  
  Given('I am on the Read-it home page') do
    visit root_path
  end
  
  # Filter with one tag
  When /^I fill the Tags box with single tag Fiction and press Search Tags$/ do

    fill_in "Tags", with: "Fiction"
    click_on 'Search Tags'
  end
  
  Then('I should see the following books: The Lord of the Rings, Nigma Machine') do 
    titles = page.all(:css,'.card-title').map(&:text)
    testarray = ['The Lord of the Rings', 'Nigma Machine']
    titles.each_with_index do |value, index|
        value.should == testarray[index]
    end
  end


  When /^I fill the Tags box with multiple tag Fiction Fantasy and press Search Tags$/ do

    fill_in "Tags", with: "Fiction Fantasy"
    click_on 'Search Tags'
  end
  
  Then('I should see the following books: The Lord of the Rings, Nigma Machine, Ocean 2') do 
    titles = page.all(:css,'.card-title').map(&:text)
    testarray = ['The Lord of the Rings', 'Nigma Machine', 'Ocean 2']
    titles.each_with_index do |value, index|
        value.should == testarray[index]
    end
  end

  When /^I fill the Tags box with tag Science not present and press Search Tags$/ do

    fill_in "Tags", with: "Science"
    click_on 'Search Tags'
  end
  
  Then('as this tag is not present in the database I should see all the books : The Lord of the Rings, Ocean 2, Nigma Machine, The Silent Patient, The Family Across the Street') do 
    titles = page.all(:css,'.card-title').map(&:text)
    # puts titles
    testarray = ['The Lord of the Rings', 'Ocean 2', 'Nigma Machine', 'The Silent Patient', 'The Family Across the Street']
    titles.each_with_index do |value, index|
        value.should == testarray[index]
    end
    
  end
  