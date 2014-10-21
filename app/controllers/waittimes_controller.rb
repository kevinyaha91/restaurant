class UsersController < ApplicationController

def new
	@waittime = Waittime.new
end


def create
		@waittime = Waittime.new(params.require(:waittime).permit(:ownerInput8to9, :ownerInput9to10, :ownerInput10to11, :ownerInput11to12, :ownerInput12to13, :ownerInput13to14, :ownerInput14to15, :ownerInput15to16, :ownerInput16to17, :ownerInput17to18, :ownerInput18to19, :ownerInput19to20, :ownerInput20to21))
		if @Waittime.save
			
		else
			render 'new'
		end
	end
