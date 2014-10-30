class WaitTimesController < ApplicationController

	def new
		@place = Place.find_or_create_by(yelp_id: params[:yelp_id])
		@waittime = WaitTime.new(place: @place)
		
	end


	def create
		@place = Place.find_or_initialize_by(yelp_id: params[:yelp_id])
		if @place.confirm(params[:verification])
			params.require(:wait_time).each do |wait_time|
			    instance = WaitTime.new wait_time.permit( 
			    	:day, 
			    	:hour_of_day,
			    	:owner_wait_input,
			    	:user_id
			    	)
			    instance.place = @place
			    instance.save
			end

			redirect_to home_page_path
		else
			render 'new'
		end
	end

end