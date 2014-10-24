class Userstat
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  field :user_id, type: String
  field :day, type: Integer
  field :hour_of_day, type: Integer
  field :user_wait_input, type: Integer


  embedded_in :place
end
