class ProductController < ApplicationController
	def index
		@products = Product.all
	end
	def new
		@my_product = Product.new
		render "new"
	end
	def create
		@my_product= Product.new(
			:title => params[:product][:title],
			:description => params[:product][:description],
			:deadline => params[:product][:deadline])
		@my_product.save
		redirect_to "/"
	end
end
