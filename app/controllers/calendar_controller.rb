class CalendarController < ApplicationController
   
    def index
        @activities = Activity.joins(:project).where(projects: {institute_id: current_institute.id})
    end
    
    
  
end
