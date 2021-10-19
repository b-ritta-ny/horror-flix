class ApplicationController < ActionController::API

    helpers do 

        def current_user 
            User.first
        end    

        #currently mocked version 

        def logged_in?
            !!current_user
        end
    end
end
