FactoryGirl.define do

	factory :event do |e|
		e.title  "Party by the Shore"
    e.description  "this is the last and only"
    e.location  "New York, Ny"
    e.date    "2001-05-04"
	end

	factory :invalid_event, class: Event do |e|
		e.name nil
	end





end