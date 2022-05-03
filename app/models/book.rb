class Book < ApplicationRecord

  belongs_to :user

  has_and_belongs_to_many :tags, uniq: true  

  puts("DEBUG: Inside the book.rb model file.")
  # show only books that belong to the current user
  scope :filter_by_user_id, lambda{ |userid| where(:user_id => userid) }

  attr_accessor :tag_names

  def tag_names=(names)
    @tag_names = names.downcase
    names.split.each do |name|
    self.tags << Tag.find_or_initialize_by(name: name.downcase)
    end
  end

  def self.order_options
      %w(Author Genre)
  end

end
