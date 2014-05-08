class Event < ActiveRecord::Base
	# attr_accessible :message, :name
	has_and_belongs_to_many :photos
	has_and_belongs_to_many :tags
	has_many :comments, as: :liked
	accepts_nested_attributes_for :photos
	accepts_nested_attributes_for :comments
	validates_presence_of :title
  
	
end