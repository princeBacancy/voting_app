class UserLoginCredentialsController < ApplicationController

    def sign_up
        @sign_up = UserLoginCredential.new()
    end

    def welcome_sign_up
        # sign_up_data =  
        if UserLoginCredential.new(sign_up_params).save
            redirect_to welcome_path
        end
    end
    
    def sign_up_params
        params.require(:user_login_credential).permit(:user_name, :email, :password)
    end
end


