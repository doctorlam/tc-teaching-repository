class AddAttachmentsToEntries < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :attachments, :string
  end
end
