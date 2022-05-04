Given('the following books exist:') do |table|
  @user = User.create!({
        :email => "none4@nomail.com",
        :password => "12345678913",
        :password_confirmation => "12345678913"
      })
      visit new_user_session_path

      fill_in "Email", with: "none3@nomail.com"
      fill_in "Password", with: "12345678913"
      click_button "Log in"
  # table is a Cucumber::MultilineArgument::DataTable
  # Book Model is pending, not created
  table.hashes.each do |book|
    Book.create!(:title => book['title'],
    :user => @user,
      :author => book['author'],
      :genre => book['genre'],
      :tag_names => book['tag_names'],
      :description => book['description'],
      :totalPage => book['totalPage'],
      :created_at => book['created_at'])
  end
end

Given('I am on the Read-it home page') do
  visit root_path
end

# Selecting 'author'
When('I select the option author') do
  select 'Author', from: 'option_id' # Code here that turns the phrase above into concrete actions
  #select 'Filter', from: 'commit'
  
  click_on 'Sort'
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
  click_on 'Sort'
end

Then('I should see the following books genre order: Science Fiction, Science Fiction, Thriller, Thriller, Thriller') do
  genre = page.all(:css,'.card-genre').map(&:text)
  testarray = ['Science Fiction', 'Science Fiction', 'Thriller', 'Thriller', 'Thriller']
  genre.each_with_index do |value, index|
    value.should == testarray[index]
  end
   # Code here that turns the phrase above into concrete actions
end

When('I select the option oldest-newest') do
  select 'Oldest-Newest', from: 'option_id' # Code here that turns the phrase above into concrete actions
  #select 'Filter', from: 'commit'
  click_on 'Sort'
end

Then('I should see the following books order: Angels & Demons, Dune, Foundation, The Lost Symbol, The Da Vinci Code') do
  genre = page.all(:css,'.card-titles').map(&:text)
  testarray = ['Angels & Demons', 'Dune', 'Foundation', 'The Lost Symbol', 'The Da Vinci Code']
  genre.each_with_index do |value, index|
    value.should == testarray[index]
  end
   # Code here that turns the phrase above into concrete actions
end
