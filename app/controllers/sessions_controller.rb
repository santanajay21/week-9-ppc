class SessionsController < ApplicationController

    def welcome
        redirect_to parties_path if logged_in?
    end

    def omniauth
        user = User.from_omniauth(request.env['omniauth.auth'])
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            redirect_to '/login'
        end
    end

    def destroy
        session.clear
        redirect_to '/'
    end
end
