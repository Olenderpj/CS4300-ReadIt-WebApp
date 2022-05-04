class AddCommentToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :comment, :string
  end
end
