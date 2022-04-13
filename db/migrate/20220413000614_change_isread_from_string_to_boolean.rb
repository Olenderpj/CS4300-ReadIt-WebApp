class ChangeIsreadFromStringToBoolean < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :boolean
    change_column :books, :isRead, :boolean
  end
end
