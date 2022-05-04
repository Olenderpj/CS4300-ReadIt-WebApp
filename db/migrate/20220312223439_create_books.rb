class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :description
      t.boolean :isInReadingList
      t.boolean :isInPersonalLibraryList
      t.boolean :isRead
      t.string :boolean

      t.timestamps
    end
  end
end
