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
          :created_at => book['created_at'],
          :isInReadingList => book['isInReadingList'],
          :isRead => book['isRead'])
    end
end

Given('The user is on the Books I've already Read page') do
    visit root_path
    click_link 'Books I've already Read'
end
