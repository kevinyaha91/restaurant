class PlacesController < ApplicationController


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

end

