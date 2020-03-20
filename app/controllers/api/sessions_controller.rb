class Api::SessionsController < ApplicationController
     def create
        email = (params[:user][:email])
        password = (params[:user][:password])
        
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
        email_exists = User.find_by_email(params[:user][:email])

        if email == '' || password == ''
            render json: ['Field cannot be blank'], status: 401
        elsif email_exists && @user.nil?
            render json: ['Incorrect password'], status: 401
        elsif @user.nil?
            render json: ['Email does not exist'], status: 401
        else 
            signin(@user)
            render 'api/users/show'
        end
    end


    def destroy
        if current_user
            signout
            render json: {}
        else
            render json: ['Cannot sign out'], status: 422
        end
    end
end
