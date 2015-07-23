class UsersController < ApplicationController
    def new
        destroy_session
        set_institute
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
      destroy_session
      @institutes = Institute.all
      render layout: 'user'
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
      if session[:institute_id]
        set_institute 
        @person.institute = @institute
      end
      if @person.save
        @user.person = @person
        if @user.save
          if @person.institute
            redirect_to calendar_path, notice: 'Informações registradas com sucesso.'
          else
            redirect_to user_new_institute_path, notice: 'Informações pessoais registradas com sucesso.'
          end
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
        params.require(:user).permit(:login, :password, :password_confirmation, :institute_id)
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
    
    def set_institute
      if params[:institute_id] || session[:institute_id]
        begin
          institute_id = (params[:institute_id] ? params[:institute_id] : session[:institute_id]) 
          @institute = Institute.find(institute_id) 
          session[:institute_id] = @institute.id
          rescue ActiveRecord::RecordNotFound
            redirect_to :user_search_institute, :flash => { :error => "Não foi possível encontrar o registro desta instituição." }
        end
      end
    end
    
    def destroy_session
        session[:user_id] = nil 
        session[:institute_id] = nil
    end
end
