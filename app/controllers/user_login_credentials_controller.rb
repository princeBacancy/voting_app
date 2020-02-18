class UserLoginCredentialsController < ApplicationController
    @@login_flag = false
    @@user_name
    def after_login
        #first commit
        @login = nil
        @login = UserLoginCredential.find_by(user_name:params[:user_name])
        session[:user_id] =  @login.id
        if @login != nil && params[:password] == @login.password
            @@login_flag = true
            @@user_name = @login.user_name
            session[:user_name] =  @login.user_name
            
            redirect_to welcome_path(@@user_name)
        else
            flash[:errors] = "invalid user_name or password !!!"
            redirect_to login_path
        end
    end

    def sign_up
        @sign_up = UserLoginCredential.new()
    end

    def welcome_sign_up
        @sign_up_data =  UserLoginCredential.new(sign_up_params)
        if @sign_up_data.save
            @@login_flag = true
            @@user_name = @sign_up_data.user_name
            redirect_to welcome_path(@@user_name)
        else
            flash[:errors] =  @sign_up_data.errors.full_messages
            redirect_to sign_up_path
        end
    end
    
    def welcome
        if @@login_flag
            @@login_flag = false
            @user_name = @@user_name
        else
            render status: :unauthorized
            exit
        end
    end

    def login_params
        params.require(:user_login_credential).permit(:user_name, :password)
    end

    def sign_up_params
        params.require(:user_login_credential).permit(:user_name, :email, :mobile_no, :password, :password_confirmation)
    end
end


