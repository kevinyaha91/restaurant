class FavouritesController < ApplicationController
	
	def nothing
	end

	def create
		@favourite = Favourite.new(params.require(:favourite).permit(:yelp_id, :user_id))
			if @favourite.save 
				redirect_to places_path
			else
				render 'nothing'
			end
	end

	def index
		@favourites_list_saved = current_user.favourites
		@favourites_list = []
		@favourites_list_saved.each do |f|
			@favourites_list.push Yelp.client.business(f.yelp_id)
		end
	end

	def destroy
		@favourite = Favourite.find_by(yelp_id: params[:id])
		@favourite.destroy
		redirect_to :back
	end


end
