module EventsHelper

	def first_one
		Photo.first
	end

	def last_one
		Photo.last
	end

	def take_one
		Photo.take
	end

	def formatted_date(date)
		date.strftime("%Y")
	end
	# in my view, I can call e.g.
	# .div
	#	  = formatted_date(@event.event_date)
	#  ^ this would output the event's event date as its year "2014"
	# this keeps me from having to do:
	#   = @event.event_date.strftime("%Y")
	# every time in my view when i wanna format a date

	


	 

end
