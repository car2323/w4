class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def show
        @my_user = User.find_by(id: params[:id])
		unless @my_user
			render "/users/no_user"
		end
		#render show
	end
	def new
		@my_user = User.new 
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
