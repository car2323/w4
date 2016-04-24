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
    def create
    	@my_concert= Concert.new(
			:artist => params[:concert][:artist],
			:venue => params[:concert][:venue],
			:city => params[:concert][:city],
			:date => params[:concert][:date],
            :price => params[:concert][:price],
			:description => params[:concert][:description])
         if @my_concert.save                      #no necesito salvar primero, basta solo con el condicional para q salve
            redirect_to "/concerts"
         else
            render "new"
         end
    end
end
