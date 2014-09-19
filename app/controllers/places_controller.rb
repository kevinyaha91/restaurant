class PlacesController < ApplicationController


def search
	search_keyword = params[:search][:keywords]
	result = { term: search_keyword,
       limit: 5,
       sort: 0,
       
     }

		@results = Yelp.client.search('Los Angeles', result)


	render "index"

	
end

def index
end


end
