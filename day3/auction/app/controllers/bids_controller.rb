class BidsController < ApplicationController
	def index
		@my_bid = Bid.all
	end
	def show
	end
	def new
		@my_user = User.new #esto es para el formulario es como un metodo GET
		@my_product = Product.new
		@my_bid = Bid.new 
		render "new"
	end
	def create
		@my_user= User.new(
			:name => params[:user][:name],
			:email => params[:user][:email])
        if @my_user.save                      #no necesito salvar primero, basta solo con el condicional para q salve
            redirect_to "/users"
         else
            render "new"
         end

	end
end
