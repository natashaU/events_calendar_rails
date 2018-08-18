class EventsController < ApplicationController

	def index
		#@events = Event.all


		#if stale?(last_modified: @events.updated_at, public: true)
			#memecache to check browser cache
		@events = Event.order('day_id', 'start_time')
		#render json: {status: 'SUCCESS', message: 'Loaded Events', data:@events}, status: :ok
		#render json: @events, status: :ok
		render json: @events 
	#end
		
	end

	def show
		@events = Event.where("day_id = ?", params[:id]).order('start_time')
		

		#if stale?(last_modified: @events.updated_at, public: true)
		render json: @events
	#end
	#end
	end


	def create
		@event = Event.new(event_params)
		#@event = Event.new(params.require(:event).permit(:start_time, :end_time, :description, :day_id))
		if @event.save
			@events = Event.where("day_id = ?", params[:day_id]).order('start_time')
			#@events = Event.all
			render json: @events
		else
			head :unprocessable_entity
		end
	end


	def update
		@event = Event.find(params[:id])
		if @event.update(event_params)
			#@events = Event.all
			@events = Event.where("day_id = ?", params[:day_id]).order('start_time')
			render json: @events
		else
			head :unprocessable_entity
		end

	end

	def destroy
		@event = Event.find(params[:id])
		if @event.destroy
			render json: @event
		else
			head::unprocessable_entity
		end
	end



	private
	def event_params
		params.permit(:start_time, :end_time, :description, :day_id)
	end




end
