class AddEntryTypeOtherToEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :entry_type_other, :string
  end
end
