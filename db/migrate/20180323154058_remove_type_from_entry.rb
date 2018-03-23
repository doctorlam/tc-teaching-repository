class RemoveTypeFromEntry < ActiveRecord::Migration[5.1]
  def change
    remove_column :entries, :type, :string
  end
end
