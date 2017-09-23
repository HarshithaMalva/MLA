class Post < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	belongs_to :comment
	has_many :post_types
	
end
