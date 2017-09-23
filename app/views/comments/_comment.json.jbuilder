json.extract! comment, :id, :description, :rating, :user_id, :article_id, :post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
