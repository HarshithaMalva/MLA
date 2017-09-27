class Role < ActiveRecord::Base
	has_many :profiles
	has_many :comments
	has_many :articles
	has_many :permissions	
end
