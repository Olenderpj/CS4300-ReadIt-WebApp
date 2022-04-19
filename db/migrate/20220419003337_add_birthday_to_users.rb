class AddBirthdayToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birthMonth, :integer
    add_column :users, :birthDay, :integer
    add_column :users, :birthYear, :integer
  end
end
