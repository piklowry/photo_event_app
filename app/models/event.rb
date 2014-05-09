class Event < ActiveRecord::Base
	# attr_accessible :message, :name
	has_and_belongs_to_many :photos
	has_and_belongs_to_many :tags
	has_many :comments, as: :liked
	accepts_nested_attributes_for :photos
	accepts_nested_attributes_for :comments
	validates_presence_of :title


  



	# def formatted_name
	# 	first_name + " " + last_name
 # 	end  
 ## ^ this is more common in helpers, not models
	
 # pretend events table has :expected_attendance and :attendance (both integer)
 def attendance_gap
   attendance - expected_attendance  
   # //this should be good if attendance and expected_attendance is an integer
 end
 # anywhere, @event.attendance_gap
 # e.g. @event = Event.find(1)
 # @event.attendance = 1000
 # @event.expected_attendance = 2000
 # @event.attendance_gap 
 # => 1000

end