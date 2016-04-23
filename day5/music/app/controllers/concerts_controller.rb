class ConcertsController < ApplicationController
	def index
		@concerts = Concert.all
	end
	def show
        @my_concert = Concert.find_by(id: params[:id])
		unless @my_concert
			render "/concerts/no_concert_found"
		end
		#render show
	end
	def new
		@my_concert = Concert.new 
		render "new"
	end

end
