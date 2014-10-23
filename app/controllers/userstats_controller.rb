class UserstatsController < ApplicationController

	def new
	end

	def create
		@place = Place.find_or_initialize_by(yelp_id: params[:userstat][:yelp_id])
		@userstat = Userstat.new(params.require(:userstat).permit(:seconds_since_midnight, :user_wait_input, :day, :user_id))
		@userstat.place = @place
		if @userstat.save
			redirect_to home_path	
		else
			render 'new'
		end
	end


end
