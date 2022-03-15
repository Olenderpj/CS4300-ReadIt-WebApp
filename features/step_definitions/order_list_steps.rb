Given('the following books exist:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  # Book Model is pending, not created
  table.hashes.each do |book|
    Book.create!(:title => book['title'],
      :author => book['author'],
      :genre => book['genre'])
  end
end

Given('I am on the Read-it home page') do
  visit root_path
end

# Selecting 'author'
When('I select the option author') do
  select 'Author', from: 'option_id' # Code here that turns the phrase above into concrete actions
  #select 'Filter', from: 'commit'
  
  click_on 'commit'
end

Then('I should see the following books author order: Dan Brown, Dan Brown, Dan Brown, Frank Herbert, Isaac Asimov') do 
  authors = page.all(:css,'.card-author').map(&:text)
  #puts authors
  testarray = ['Dan Brown', 'Dan Brown', 'Dan Brown', 'Frank Herbert', 'Isaac Asimov']
  authors.each_with_index do |value, index|
    value.should == testarray[index]
  end
 
  #expect(authors).to contain_exactly(authors)
   # Code here that turns the phrase above into concrete actions
  #puts "#{stats}""
end

# Selecting 'genre'
When('I select the option genre') do
  select 'Genre', from: 'option_id' # Code here that turns the phrase above into concrete actions
  #select 'Filter', from: 'commit'
  click_on 'commit'
end

Then('I should see the following books genre order: Science Fiction, Science Fiction, Thriller, Thriller, Thriller') do
  genre = page.all(:css,'.card-genre').map(&:text)
  testarray = ['Science Fiction', 'Science Fiction', 'Thriller', 'Thriller', 'Thriller']
  genre.each_with_index do |value, index|
    value.should == testarray[index]
  end
   # Code here that turns the phrase above into concrete actions
end