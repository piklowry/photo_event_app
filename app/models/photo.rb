class Photo < ActiveRecord::Base
	# attr_accessible :message, :name
	has_and_belongs_to_many :events
	has_many :comments, as: :liked
	accepts_nested_attributes_for :comments 
	mount_uploader :photo_pic, PhotoPicUploader
	validates_presence_of :photo_pic

	def self.find_four
		find([5, 6, 7, 8])
	end


end


