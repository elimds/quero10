class UsersController < ApplicationController
    def new
        @user = User.new
        @person = Person.new
    end
    
    def create 
      @person = Person.new
      @user = User.new(user_params)
      if @user.save 
        session[:user_id] = @user.id 
        redirect_to projects_path 
      else 
        render :new, notice: 'Erro ao gravar seus dados.'
      end 
    end    
    
    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
