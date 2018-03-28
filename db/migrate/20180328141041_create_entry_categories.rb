class CreateEntryCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :entry_categories do |t|
      t.integer :entry_id
      t.integer :category_id
    end
  end
  def self.up
    add_index :entry_categories, %I(entry_id category_id), name: :entry_category

  end
end
