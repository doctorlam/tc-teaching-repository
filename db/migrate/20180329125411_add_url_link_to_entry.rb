class AddUrlLinkToEntry < ActiveRecord::Migration[5.1]
  def change
    add_column :entries, :url_link, :string
  end
end
