class AddAttachmentToEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :attachment, :string
  end
end
