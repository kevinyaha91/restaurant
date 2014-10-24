class WaitTime

  include Mongoid::Document
  include Mongoid::Timestamps::Created


  embedded_in :place

  WAIT=[10, 20, 30, 60, 90]

  field :day, type: Integer
  field :seconds_since_midnight, type: Integer
  field :owner_wait_input, type: Integer

end

#NOTES
#store as a standard time
#time zone preference!

# if 28800 < Time.now.seconds_since_midnight < 32400
# wait_time_display = place.where()

#seconds since midnight
#8am 28800, 
#9am 32400, 
#10am 36000, 
#11am 39600, 
#12am 43200, 
#13am 46800, 
#14am 50400, 
#15am 54000, 
#16am 57600, 
#17am 61200, 
#18am 64800, 
#19am 68400, 
#20am 72000, 
#21am 75600]

#option 1: create a new doc everytime a user inputs new information

#option 2: push the wait time into the owner_wait_input, into an array and average it



# field :offical_time_input
# field :processed_time
# field :display_time 
# need created time? to verify the data stream to monday tuesday wendesday or thursday?

#when search result is shown
#there would be a bar to display current waiting time.
#there would have a bar ready for it to submit waiting time. Upon clicking submit (the find or create function triggers)
#(if the place already exists)the time will be pushed toward its time data base
#(if the place doens't exist already) the place will be created (with teh yelp ID) and the time will be pushed in. 
#everytime when something is searched yelp gives us some restaurants. These restaurants yelp ID will be searched in 
#be searched in our data base. if there is no match in our time data base display: no info
# if there is a match in our data base then it will show that time.  
#indexing the data base. 