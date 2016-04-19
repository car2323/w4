class SiteController < ApplicationController
	def home
		render "home"
    end
    def contact
         render "contact"
    end
    def say_name
    	@name = params[:name]
    	render "say_name"
    end
    def calculator
       @first_number =  params[:first_number].to_f
       @second_number = params[:second_number].to_f
       @result = @first_number + @second_number 
       render "calculator"
    end
end
