class OfflineModesController < ApplicationController
    @@candidates = {}

    def home
    end

    def vote
        
        offline_mode = OfflineMode.create(user_login_credential_id:session[:user_id],number_of_candidates:params[:number_of_candidates].to_i,number_of_maximum_voters:params[:number_of_maximum_voters].to_i).id
        
        for i in 1..(params[:number_of_candidates].to_i)
            @@candidates.merge!("name of candidate #{i}": params["name of candidate #{i}"])
            OfflineModeData.create(offline_mode_id:offline_mode,name_of_candidate:params["name of candidate #{i}"])
        end
        
        redirect_to live_path
     
    end

    def live
        @candidates = @@candidates
    end

    def results
        redirect_to results_page_path
    end
end
