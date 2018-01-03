module ApplicationHelper

	def current_page
		if params["controller"] == "homes"
			return "DashBoard"
		elsif params["controller"] == "projects"	
			return "Projects"
		elsif params["controller"] == "tasks"	
			return "Tasks"		
		end
	end

	def active_icon_with_action(current_controller, current_method)

		if params["controller"] == current_controller && params["action"] == current_method

			return "active"
		else
			return "unactive"
		end

	end

	def active_icon(current_controller)
		if params["controller"] == current_controller
			return "active"
		else
			return "unactive"
		end
	end

	def add_class_active_and_open_for_action(current_controller, current_method)
		css_class = active_icon_with_action(current_controller, current_method)
		if css_class.downcase == "active"
			css_class = "open #{css_class}"
		end
		css_class		
	end

end
