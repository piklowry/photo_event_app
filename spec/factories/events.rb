require 'spec_helper'

FactoryGirl.define do

	factory :event do |e|
		e.title  { Faker::Name.title }
    e.description {Faker::Lorem.sentence}
    e.location  { Faker::Address.street_address }
	end

	 factory :invalid_event, class: Event do |e|
		e.name nil
	end

	factory :photo_is_event_form, class: Event do |e|
	  e.name   { Faker::Name.name }
	  e.photos {|p| [p.association(:photo)]}
	end

	

end