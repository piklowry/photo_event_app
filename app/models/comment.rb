class Comment < ActiveRecord::Base
	# attr_accessible :message
	belongs_to :liked, polymorphic: true
	
end
