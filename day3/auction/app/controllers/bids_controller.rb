class BidsController < ApplicationController
	def index
	end
	def show
	end
	def new
		@my_user = User.find_by(id: params[:user_id]) #esto es para el formulario es como un metodo GET
		@my_product = Product.find_by(id: params[:product_id])
		@my_bid = User.new 
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
