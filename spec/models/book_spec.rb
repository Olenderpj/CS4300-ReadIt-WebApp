require 'rails_helper'

RSpec.describe Book, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "is valid with valid attributes" do
    expect(Book.new).to be_valid
  end

  it "is not valid without a title" do
    book = Book.new(title: "Testing a new book: 4-3-2022")
    expect(book).to_not be_valid 
  end
  
end
