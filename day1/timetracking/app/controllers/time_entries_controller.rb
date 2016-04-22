class TimeEntriesController < ApplicationController
	def index
	   @my_project = Project.find(params[:project_id])
	   @my_entries = @my_project.time_entries
	end
	def new
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.new
	end
	def create
         @my_project = Project.find params[:project_id]
         @my_entry = @my_project.time_entries.new(
         	hours: params[:time_entry][:hours],
         	minutes: params[:time_entry][:minutes],
         	date: params[:time_entry][:date]
         	)
         if @my_entry.save   #no necesito salvar primero, basta solo con el condicional para q salve
            redirect_to action: "index", controller: "time_entries", project_id:
            @my_project.id
         else
            render "new"
         end

	end
	def  edit
	   @my_project = Project.find params[:project_id]
	   @my_entry = @my_project.time_entries.find params[:id] 
	end
	def update
		@my_project = Project.find_by(id: params[:project_id])
		@my_entry = @my_project.time_entries.find_by(id: params[:id])

		                   #
		#if @my_entry.update(entry_params)
		               #este metodo esta definido en el PRIVATE
		                   #
		if @my_entry.update(hours: params[:time_entry][:hours],
			minutes: params[:time_entry][:minutes],
			date: params[:time_entry][:date])
		    redirect_to action: "index", controller: "time_entries",
		    project_id: @my_project.id
		else
			render "edit"
		end
	end
	def destroy

		
	end
 
    private
      def entry_params
         params.require(:time_entry).permit(:hours, :minutes, :date)
      end 
end
