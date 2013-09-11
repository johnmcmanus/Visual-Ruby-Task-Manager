class Task < ActiveRecord::Base
	self.table_name = 'task'

	include GladeGUI

	

	def get_all_tasks()
		@alltasks = Array.new 
		Task.all.find_each do |task|
		@alltasks.push(task.task_name)
	end



	def show()
		
		load_glade(__FILE__)
		set_glade_all()
		show_window()
	end
end

