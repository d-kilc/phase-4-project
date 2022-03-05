class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token
    # before_action :authorize_user
    
    def create
        user = User.find_by username: params[:username]
        if user&.authenticate params[:password]
            session[:user_id] ||= user.id
            return render json: session, status: 200#, serializer: UserDetailSerializer
        end
        render json: { error: 'Invalid credentials' }, status: 402
    end

    def destroy
        session.delete :user_id
    end

end
