class MigrateDatabaseState < ActiveRecord::Migration[5.1]
  def change
  	ActiveRecord::Base.transaction do
  Entry.where.not(topic_id: nil).find_each do |entry|
    next if EntryTopic.find_by(entry_id: entry.id, topic_id: entry.topic_id)
    EntryTopic.create!(entry_id: entry.id, topic_id: entry.topic_id)
  end
end
  end
end
