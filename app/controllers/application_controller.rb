class ApplicationController < ActionController::API

    def current_user 
        User.find(session[:user_id])
    end    

    #currently mocked version 

    def logged_in?
        !!current_user
    end

end
