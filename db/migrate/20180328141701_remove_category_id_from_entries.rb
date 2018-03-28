class RemoveCategoryIdFromEntries < ActiveRecord::Migration[5.1]
  def change
    remove_column :entries, :category_id, :integer
  end
end
