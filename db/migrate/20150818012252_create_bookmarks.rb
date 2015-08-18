class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :timestamps
      t.string :title
      t.text :comment
      t.string :category 
      t.boolean :favorite
      t.timestamps null: false
    end
  end
end
