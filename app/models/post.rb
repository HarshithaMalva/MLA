class Post < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	has_many :comment
	belongs_to :post_type
	validates_presence_of :title, :avatar, :post_type_id
	AUDIO = ["mp3", "wav"]
	VIDEO = ["mp4", "avi", "wmv", "mov"]
	IMAGE = ["jpeg", "jpg", "png", "gif"]


	validate :check_extension


	def check_extension
		if avatar.present?
			if post_type.name == "Audio"  && AUDIO.exclude?(avatar.file.extension)
				errors.add(:file_type, "Invalid Audio File")
			elsif post_type.name == "Video"  && VIDEO.exclude?(avatar.file.extension)
				errors.add(:file_type, "Invalid Video File")
			elsif post_type.name == "Image"  && IMAGE.exclude?(avatar.file.extension)
				errors.add(:file_type, "Invalid Image File")
			end
		end
	end
		
	
end
