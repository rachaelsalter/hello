class GreetingsController < ApplicationController
	def index
		@greeting = Greeting.order("RANDOM()").first
	end

	def create
	  @greeting = Greeting.create(quote_params)
	  redirect_to root_path
	end
    
    private

  def quote_params
    params.require(:greeting).permit(:usergreeting, :initials)
  end
end
