class AddEntryTypeToEntry < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :entry_type, :string
  end
end
