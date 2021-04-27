class SessionsController < ApplicationController

    def new
        
    end

    def create
        if params[:name].empty? || !params[:name]
            redirect_to login_path 
        else
            session[:name] = params[:name]
            redirect_to "/hello"
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end
end
