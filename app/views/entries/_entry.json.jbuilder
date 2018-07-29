json.extract! entry, :id, :title, :type, :genre, :level, :course, :created_at, :updated_at
json.url entry_url(entry, format: :json)
json.favorited signed_in? ? current_user.favorited?(entry) : false
json.favorites_count entry.favorites_count || 0
