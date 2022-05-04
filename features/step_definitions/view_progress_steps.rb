Given('the following books exist for history test:') do |table|
    @user = User.create!({
        :email => "none4@nomail.com",
        :password => "12345678913",
        :password_confirmation => "12345678913"
      })
      visit new_user_session_path

      fill_in "Email", with: "none3@nomail.com"
      fill_in "Password", with: "12345678913"
      click_button "Log in"
      #page.should have_content('Add a Book')
    # table is a Cucumber::MultilineArgument::DataTable
    # Book Model is pending, not created
    table.hashes.each do |book|
        Book.create!(:title => book['title'],
        :user_id => @user.id,
          :author => book['author'],
          :genre => book['genre'],
          :tag_names => book['tag_names'],
          :description => book['description'],
          :totalPage => book['totalPage'],
          :created_at => book['created_at'],
          :isInReadingList => book['isInReadingList'],
          :isRead => book['isRead'])
    end
end


Given('I am on the Read-it home page for history') do
    
    visit new_user_session_path

    fill_in "user[email]", with: "none4@nomail.com"
    fill_in "user[password]", with: "12345678913"
    click_button("Log in")
    expect(page).to have_content("My Menu")
    
    # puts page.body
    
    #page.should have_content('Add a Book')
    
end

When('The user clicks on books I have already read link') do
    
    
    #click_on 'Books I\'ve already Read'
    #find(:link,"/alread").click
    #page.find(:css, 'a[href="alread"]')
    #find(:css, '#Books I\'ve already Read').click
    #find('a[href=$="alread"]').click
    #find_link("Books I\'ve already Read").click
    click_link(href: "/alread")
end

Then('The visible books should match the list of read books') do 
    authors = page.all(:css,'.card-titles').map(&:text)
    #puts authors
    testarray = ['Foundation', 'Angels & Demons']
    authors.each_with_index do |value, index|
      value.should == testarray[index]
    end
   
    #expect(authors).to contain_exactly(authors)
     # Code here that turns the phrase above into concrete actions
    #puts "#{stats}""
end

When('The user clicks on books I Want to Read') do
    
    
    #click_on 'Books I\'ve already Read'
    #find(:link,"/alread").click
    #page.find(:css, 'a[href="alread"]')
    #find(:css, '#Books I\'ve already Read').click
    #find('a[href=$="alread"]').click
    #find_link("Books I\'ve already Read").click
    click_link(href: "/willread")
end

Then('The visible books should match the list of will read books') do 
    authors = page.all(:css,'.card-titles').map(&:text)
    #puts authors
    testarray = ['The Da Vinci Code', 'The Lost Symbol', 'Dune']
    authors.each_with_index do |value, index|
      value.should == testarray[index]
    end
   
    #expect(authors).to contain_exactly(authors)
     # Code here that turns the phrase above into concrete actions
    #puts "#{stats}""
end