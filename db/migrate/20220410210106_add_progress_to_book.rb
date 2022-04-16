class AddProgressToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :totalPage, :integer, deafult: 0
    add_column :books, :readPage, :integer, default: 0
  end
end
