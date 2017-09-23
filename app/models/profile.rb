class Profile < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :positions
end
