class CalendarController < ApplicationController
   
    def index
        
       # render layout: 'welcome'
        
         @activities = Activity.all
         @date=params[:month] ? Date.parse(params[:month]) : Date.today
    end
    
    
  
end
