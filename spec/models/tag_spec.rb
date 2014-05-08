require 'spec_helper'

describe Tag do
	let(:tag) { Tag.new }
	
	it 'should not be nil' do
    tag.should_not eq(nil)
  end

	it 'should have tags' do
		tag = Tag.all
	end


end
