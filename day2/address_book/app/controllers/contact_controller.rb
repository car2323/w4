class ContactController < ApplicationController
	def index
		@contacts = Contact.all
		@contacts = @contacts.order(name: :asc)
		render:index
	end
	def new_contact
	    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone],
      :email => params[:contact][:email])
	contact.save
    #render(:text => contact.attributes)
    redirect_to("/")
	end
	 def show
	 	@one_contact_info=Contact.find_by(id: params[:id])
	 	# render: show
	 end
end
