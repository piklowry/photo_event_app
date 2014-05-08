require 'spec_helper'

	describe Event do
		let(:event) { Event.new }
		
	
	it 'should have index' do
		@event = Event.all 
	end


	it 'should not be nil' do
		event.should be_true
	end
	

	it 'must contain photos' do
		event.photos.build
	end

	it 'should not be valid without a title' do
		event.should_not be_valid
	end

	 # it 'should have comments' do
  #   comment = events.comments.build
  #   comment.comments.last.should_not eq(nil)
  # end

end







