class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :type
      t.string :genre
      t.string :level
      t.string :course

      t.timestamps
    end
  end
end
