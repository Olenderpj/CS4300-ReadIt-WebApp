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

When('I select the option author') do
  select 'author', from: 'cars' # Code here that turns the phrase above into concrete actions
end

Then('I should see the following books author order: Dan Brown, Dan Brown, Dan Brown, Frank Herbert, Isaac Asimov') do
  pending # Code here that turns the phrase above into concrete actions
end

When('I select the option genre') do
  select 'genre', from: 'cars' # Code here that turns the phrase above into concrete actions
end

Then('I should see the following books genre order: Science Fiction, Science Fiction, Thriller, Thriller, Thriller') do
  pending # Code here that turns the phrase above into concrete actions
end