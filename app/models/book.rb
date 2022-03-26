class Book < ApplicationRecord

  has_and_belongs_to_many :tags, uniq: true  

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
