class Tag < ActiveRecord::Base
	# attr_accessible :message, :name
	has_and_belongs_to_many :events
	accepts_nested_attributes_for :events

end