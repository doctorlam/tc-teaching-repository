class AddTopicIdToEntry < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :topic_id, :integer
  end
end
