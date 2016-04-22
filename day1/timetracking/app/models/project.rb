class Project < ActiveRecord::Base
	has_many :time_entries
	#def.self.clean_old
		#creat_at < ?, 1week.ago
		# 7.day.ago
		# time.now - 60 * 60 *24 * 7
		# time.now -7.days
		# time.now -1.week
        #old_projects = Project.where("created_at > ?", Time.now - 1.week) 
                                                 #tengo que crear un string con la condicion y el signo de ????
    	#old_projects = Project.where(:created_at => Time.now)
    	#tengo que usarlo con comillas?????????
		#old_projects.destroy_all
	#end
end
