class WaitTime

  include Mongoid::Document
  include Mongoid::Timestamps::Created

  embedded_in :place

  WAIT = {
  	:"15 min" => 15,
  	:"30 min" => 30,
  	:"1 hour" => 60
  }

  field :ownerInput8to9, type: integer
  field :ownerInput9to10, type: integer
  field :ownerInput10to11, type: integer
  field :ownerInput11to12, type: integer
  field :ownerInput12to13, type: integer
  field :ownerInput13to14, type: integer
  field :ownerInput14to15, type: integer
  field :ownerInput15to16, type: integer
  field :ownerInput16to17, type: integer
  field :ownerInput17to18, type: integer
  field :ownerInput18to19, type: integer
  field :ownerInput19to20, type: integer
  field :ownerInput20to21, type: integer

#should it be array here instead because we are trying to get an average right? for user input
  field :userInput8to9, type: integer 
  field :userInput9to10, type: integer
  field :userInput10to11, type: integer
  field :userInput11to12, type: integer
  field :userInput12to13, type: integer
  field :userInput13to14, type: integer
  field :userInput14to15, type: integer
  field :userInput15to16, type: integer
  field :userInput17to18, type: integer
  field :userInput18to19, type: integer
  field :userInput19to20, type: integer
  field :userInput20to21, type: integer



end

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