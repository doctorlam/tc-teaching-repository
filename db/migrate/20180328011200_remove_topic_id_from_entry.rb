class RemoveTopicIdFromEntry < ActiveRecord::Migration[5.1]
  def change
    remove_column :entries, :topic_id, :integer
  end
end
