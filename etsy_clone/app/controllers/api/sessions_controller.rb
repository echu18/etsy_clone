class Api::SessionsController < ApplicationController
     def create
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
        if @user.nil?
            render json: ['Wrong credentials'], status: 401
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
            render json: ['Cannot log out'], status: 422
        end
    end
end
