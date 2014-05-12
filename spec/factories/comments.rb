require 'spec_helper'

FactoryGirl.define do

	factory :comment do |c|
		# c.assocition :liked
		c.message {Faker::Lorem.sentence}
	end

end