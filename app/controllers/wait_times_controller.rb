class WaitTimesController < ApplicationController

	def new
		@place = Place.find_or_initialize_by(yelp_id: params[:wait_time][:yelp_id])
		@waittime = @place.wait_times.new
	end


	def create
		@place = Place.find_or_initialize_by(yelp_id: params[:wait_time][:yelp_id])
		@waittime = @place.wait_times.new(params.require(:wait_time).permit(:day, :seconds_since_midnight, :owner_wait_input))
		if 
			@waittime.save
			redirect_to home_path	
		else
			render 'new'
		end
	end

end