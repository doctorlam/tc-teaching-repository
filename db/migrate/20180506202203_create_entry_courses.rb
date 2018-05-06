class CreateEntryCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :entry_courses do |t|
      t.integer :entry_id
      t.integer :course_id

      t.timestamps
    end
  end
end
