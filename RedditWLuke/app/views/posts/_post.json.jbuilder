json.extract! post, :id, :title, :url, :content, :sub_id, :user_id, :points, :created_at, :updated_at
json.url post_url(post, format: :json)
