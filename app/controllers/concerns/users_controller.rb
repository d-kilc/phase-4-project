class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, status: 200
    end

    def show
        user = User.find_by id: session[:user_id]
        if user
            render json: user, status: 200, serializer: UserDetailSerializer    
        else
            head :no_content
        end
    end
end
