class UsersController < ApplicationController
    def new
        @user = User.new
        @person = Person.new
        render layout: 'user'
    end
    
    def create 
      @person = Person.new
      @user = User.new(user_params)
      if @user.save 
        session[:user_id] = @user.id 
        redirect_to user_new_person_path, notice: 'Informações de usuário registradas com sucesso.'
      else 
        render :new, notice: 'Erro ao gravar seus dados.'
      end 
    end
    
    def search_institute
      @institutes = Institute.all
    end
  
    # GET /users/new_person
    def new_person
      @person = Person.new
      @categories = Person.categories
      render layout: 'user'
    end
    
    def create_person
      set_user
      @person = Person.new(person_params)
      if @person.save
        @user.person = @person
        if @user.save
          redirect_to user_new_institute_path, notice: 'Informações pessoais registradas com sucesso.'
        else
          render :new_person, :flash => { :error => "Não foi possível registrar suas informações." }
        end
      else
        render :new_person, :flash => { :error => "Não foi possível registrar suas informações." }
      end
    end
    
    def new_institute
      set_user
      @institute = Institute.new
      @institute.person = @user.person
      render layout: 'user'
    end
    
    def create_institute
      set_user
      @institute = Institute.new(institute_params)
      if @institute.save
        @user.person.institute = @institute
        if @user.person.save
          session[:institute_id] = @institute.id
          redirect_to calendar_path, notice: 'Informações registradas com sucesso.'
        else
          render :new_institute, :flash => { :error => "Não foi possível registrar suas informações." }
        end
      else
        render :new_institute, :flash => { :error => "Não foi possível registrar suas informações." }
      end
    end
    
    private
    def user_params
        params.require(:user).permit(:login, :password, :password_confirmation)
    end
    
    def person_params
        params.require(:person).permit(:name, :email, :lattes, :phone, :mobile_phone, :institute_id, :category)
    end
    
    def institute_params
        params.require(:institute).permit(:name, :address, :number, :district, :city, :state_id, :zip_code, :phone, :person_id)
    end
    
    def set_user
        @user = User.find(session[:user_id])
    end
end
