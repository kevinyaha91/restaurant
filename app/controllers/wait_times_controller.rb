class WaitTimesController < ApplicationController

	def new
		@place = Place.find_or_initialize_by(yelp_id: params[:wait_time][:yelp_id])
		@waittime = WaitTime.new(place: @place)
	end


	def create
		@place = Place.find_or_initialize_by(yelp_id: params[:wait_time][:yelp_id])
		@waittime = WaitTime.new(params.require(:wait_time).permit(:day, :seconds_since_midnight, :owner_wait_input))
		@waittime.place = @place
		if @waittime.save
			redirect_to home_path	
		else
			render 'new'
		end
	end

end