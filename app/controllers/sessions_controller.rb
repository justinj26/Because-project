class SessionsController < ApplicationController
    def new
    end

    def create
        # if 
            # params[:username].nil? || params[:username].empty?
            # redirect_to controller: 'sessions', action: 'new'
        # else 
            @user = User.find_by(username: params[:username]) 
            # will need to validate usernames are uniq && real
            if @user && @user.authenticate(params[:password])
                session[:user_id] = @user.id 
                # session[:username] = params[:username]
                redirect_to user_path(@user)
            else 
                # flash[:errors] 
                redirect_to controller: 'sessions', action: 'new'
            end
        # end
    end

    def destroy
        session.delete :username
        redirect_to controller: 'application', action: 'hello'
    end
end