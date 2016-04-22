class ProductsController < ApplicationController
	def index
		@products = Product.all
	end
	def show
        @my_product = Product.find_by(id: params[:id])
		unless @my_product
			render "/products/no_product_found"
		end
		#render show
	end
	def new
		@my_user = User.find_by(id: params[:user_id]) #esto es para el formulario es como un metodo GET
		@my_product = Product.new
		render "new"
	end
	def create

		@my_user = User.find_by(id: params[:user_id])
		@my_product= @my_user.products.new(
			:title => params[:product][:title],
			:description => params[:product][:description],
			:deadline => params[:product][:deadline])
		@my_product.save
		redirect_to "/products"
	end
end
