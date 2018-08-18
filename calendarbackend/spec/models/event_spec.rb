require 'rails_helper'

RSpec.describe Event, type: :model do
 context 'validation tests' do
 	it 'ensures day_id presence' do
 		event = Event.new(description: 'halloween').save
 		expect(event).to eq(false)
 	end

 	it 'ensures day_id presence' do
 		event = Event.new(day_id: '4001').save
 		expect(event).to eq(false)
 	end
 	
 	

 	it 'should save successfully' do
 		event = Event.new(description:'hallowen', day_id:'400023').save
 		expect(event).to eq(true)
 	end

end

end


