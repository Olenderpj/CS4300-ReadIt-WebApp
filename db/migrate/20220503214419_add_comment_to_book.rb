class AddCommentToBook < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :comment
    add_column :books, :comment, :string
  end
end
