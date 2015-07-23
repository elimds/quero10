class SessionsController < ApplicationController
    def new 
	end
	
	def create
      @user = User.find_by_login(params[:session][:login])
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        redirect_to projects_path
      else
        #redirect_to welcome_index_path, :notice => "Usuário ou senha incorreto."
        redirect_to welcome_index_path, :flash => { :error => "Usuário ou senha incorreto." }
        #redirect_to '/login'
      end 
    end
    
    def destroy 
      session[:user_id] = nil 
      redirect_to '/' 
    end
end
