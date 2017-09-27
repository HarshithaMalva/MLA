class Comment < ActiveRecord::Base
	has_many :articles
	belongs_to :post
	belongs_to :user
end
