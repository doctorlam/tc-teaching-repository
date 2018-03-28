class CreateEntryTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :entry_topics do |t|
      t.integer :entry_id
      t.integer :topic_id
    end
  end
  def self.up
    add_index :entry_topics, %I(entry_id topic_id), name: :entry_topic

  end
end
