class PlacesController < ApplicationController


	def index
  	end

  	def front_page
  	end

	def search
		search_keyword = params[:keywords]
		result = { term: search_keyword,
	       limit: 5,
	       sort: 0,
	       
	     }

			@results = Yelp.client.search('Los Angeles', result)

		render "index"

	end


	def nearby
		@results_location = Yelp.client.search_by_coordinates(params[:coordinates], category_filter: 'restaurants')
		respond_to do |format|
    		format.json { render :json => @results_location }
    		format.html { render 'nearby' }
  	end

  		
	end


	#def create

	#	if Place.where(yelp_id: params[:place][:yelp_id]).exists?

	#		Place.where(yelp_id: params[:place][:yelp_id]).update(wait_time_input: params[:place][:wait_time_input])


	#		redirect_to places_path

	#	else

	#		@place = Place.new(params.require(:place).permit(:wait_time_input, :yelp_id))
	#		if @place.save
	#			render 'index'
	#		else
	#			redirect_to places_path
	#		end
	#	end
	#end

	


		#if Place.where(yelp_id: params[:place][:yelp_id]).exists? 
			#@current_time = Place.find(params[:place][:wait_time_input])
					#@bean = Bean.find(params[:id])

		#else 
			#@current_time = "No information"
		#end 


end

