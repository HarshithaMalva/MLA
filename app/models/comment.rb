class Comment < ActiveRecord::Base
	has_many :articles
	has_many :posts
end
