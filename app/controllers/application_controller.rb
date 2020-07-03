class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    before_action :current_user 
    skip_before_action :current_user, only: [:current_user, :hello, :create, :require_login]

    def current_user
        @user = User.find(session[:user_id])
    end

    def hello 
        # # if session[:username].nil?
        #     redirect_to controller: 'sessions', action: 'new'
        # end
    end

    def settings
    end

    # def current_user
    #     session[:username]
    # end

    def create
        redirect_to new_user_path
    end

    private

    def require_login
        if current_user.nil?
            redirect_to controller: 'sessions', action: 'new'
        end
    end

end
