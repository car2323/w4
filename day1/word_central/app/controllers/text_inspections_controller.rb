class TextInspectionsController < ApplicationController
	def new
    	render "new"
    end
    def create
    	@text = params[:text_inspection][:user_text]
    	@word_contentarray = @text.split(" ").length
        word_array = @text.split(" ")
    	@minute= @word_contentarray.to_f / 275
    	@hashcounter = Hash.new(0)
    	word_array.each do |auxarray_words|
    		@hashcounter[auxarray_words]+= 1
    	end
        @hashcounter = @hashcounter.sort{|key, value| value[1] <=> key[1]}.first(10)
    	render "results"
    end

    #de carro perro de the carro carro casa perro zapato zapato carro de ustedes nunca jamas pero si no pero
end
