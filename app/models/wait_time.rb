class WaitTime
  include Mongoid::Document


end


#when search result is shown
#there would be a bar to display current waiting time.
#there would have a bar ready for it to submit waiting time. Upon clicking submit (the find or create function triggers)
#(if the place already exists)the time will be pushed toward its time data base
#(if the place doens't exist already) the place will be created (with teh yelp ID) and the time will be pushed in. 
#everytime when something is searched yelp gives us some restaurants. These restaurants yelp ID will be searched in 
#be searched in our data base. if there is no match in our time data base display: no info
# if there is a match in our data base then it will show that time.  
#indexing the data base. 