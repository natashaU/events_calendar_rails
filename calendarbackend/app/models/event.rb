class Event < ApplicationRecord
	#Event.order(:day_id, :start_time)
	validates :day_id, presence: true

	after_find do |event|
		puts "Event loaded, logging in console"
	end
#end
	#:order => :day_id, :start_time
end
