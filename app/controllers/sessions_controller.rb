class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:username].nil? || params[:username].empty?
            redirect_to controller: 'sessions', action: 'new'
        else session[:username] = params[:username]
            redirect_to controller: 'application', action: 'current_user'
        end
    end

    def destroy
        session.delete :username
        redirect_to controller: 'application', action: 'current_user'
    end
end