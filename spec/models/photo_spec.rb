require 'spec_helper'

describe Photo do
	let(:photo) { Photo.new }

	it 'should have a photo' do
		photo.should_not eq(true)
	end

	it 'should have photo_pic' do
		photo.should_not be_valid
	end


end
