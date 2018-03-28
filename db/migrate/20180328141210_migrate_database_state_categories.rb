class MigrateDatabaseStateCategories < ActiveRecord::Migration[5.1]
   def change
  	ActiveRecord::Base.transaction do
  Entry.where.not(category_id: nil).find_each do |entry|
    next if EntryCategory.find_by(entry_id: entry.id, category_id: entry.category_id)
    EntryCategory.create!(entry_id: entry.id, category_id: entry.category_id)
  end
end
  end
end

