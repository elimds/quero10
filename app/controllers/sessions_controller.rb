class SessionsController < ApplicationController
  def new 
	end
	
	def create
    @user = User.find(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to projects_path
    else
      redirect_to welcome_index_path, :flash => { :error => "Usuário ou senha incorreto." }
    end 
  end
    
  def destroy 
    session[:user_id] = nil 
    redirect_to welcome_index_path
  end
end
