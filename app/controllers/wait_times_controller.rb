class WaitTimesController < ApplicationController

	def new
		@place = Place.find_or_initialize_by(yelp_id: params[:yelp_id])
		@waittime = WaitTime.new(place: @place)
	end


	def create

		@place = Place.find_or_initialize_by(yelp_id: params[:yelp_id])
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
		# params.require(:wait_time).each do |waittime|

		# @waittime = WaitTime.new(params.require(:wait_time).permit(:day, :seconds_since_midnight, :owner_wait_input))
		# @place.wait_times.push @waittime

	end

end

#time.wait_time.where(day: Time.now.wday).exists?