
class MyClass 

	include GladeGUI

	def show()
		
    load_glade(__FILE__) 
		
		set_glade_all()  
		show_window() 
	end	


end

