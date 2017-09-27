class Post < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	belongs_to :comment
	has_many :post_types


	before_save :check_extension
	before_save :save_or_not

	def check_extension
		if self.split(".").last == "jpeg" || self.split(".").last == "png" 
			return 1
		elsif self.split(".").last == "mp4" || self.split(".").last == "avi"
			return 2
		elsif self.split(".").last == "mp3" || self.split(".").last == "mp5"
			return 3
		end
	end

	def save_or_not
		if self.post_type.id == 1 && self.check_extension == 1 || self.post_type.id == 2 && self.check_extension == 2 || self.post_type.id == 3 && self.check_extension == 3
			self.save
		else
			error
		end
	end

		
	
end
