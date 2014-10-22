class WaitTime

  include Mongoid::Document
  include Mongoid::Timestamps::Created

  embedded_in :place

  WAIT=[10, 20, 30, 60, 90]


  field :temporary_wait_input, type: Integer

  field :ownerInput8to9, type: Integer
  field :ownerInput9to10, type: Integer
  field :ownerInput10to11, type: Integer
  field :ownerInput11to12, type: Integer
  field :ownerInput12to13, type: Integer
  field :ownerInput13to14, type: Integer
  field :ownerInput14to15, type: Integer
  field :ownerInput15to16, type: Integer
  field :ownerInput16to17, type: Integer
  field :ownerInput17to18, type: Integer
  field :ownerInput18to19, type: Integer
  field :ownerInput19to20, type: Integer
  field :ownerInput20to21, type: Integer

#should it be array here instead because we are trying to get an average right? for user input
  field :userInput8to9, type: Integer 
  field :userInput9to10, type: Integer
  field :userInput10to11, type: Integer
  field :userInput11to12, type: Integer
  field :userInput12to13, type: Integer
  field :userInput13to14, type: Integer
  field :userInput14to15, type: Integer
  field :userInput15to16, type: Integer
  field :userInput17to18, type: Integer
  field :userInput18to19, type: Integer
  field :userInput19to20, type: Integer
  field :userInput20to21, type: Integer



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