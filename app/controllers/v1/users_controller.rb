module V1
    class UsersController < ApplicationController
        before_action :set_user, only: [:show, :update, :destroy]
        #skip_before_action :verify_authenticity_token

        def index
            render json: { 'welcome!': 'APIサーバー元気に稼働中' }
        end      

#        def index
#          users = User.order(created_at: :desc)
#          render json: { status: 'SUCCESS', message: 'Loaded users', data: users }
#        end
  
#        def show
#          render json: { status: 'SUCCESS', message: 'Loaded the user', data: @user }
#        end
  
#        def create
#          user = User.new(user_params)
#          if user.save
#            render json: { status: 'SUCCESS', data: user }
#          else
#            render json: { status: 'ERROR', data: user.errors }
#          end
#        end
  
#        def destroy
#          @user.destroy
#          render json: { status: 'SUCCESS', message: 'Deleted the user', data: @user }
#        end
  
#        def update
#          if @user.update(user_params)
#            render json: { status: 'SUCCESS', message: 'Updated the user', data: @user }
#          else
#            render json: { status: 'SUCCESS', message: 'Not updated', data: @user.errors }
#          end
#        end
  
#        private
  
#        def set_user
#          @user = User.find(params[:id])
#        end
  
#        def user_params
#          params.require(:user).permit(:title)
#        end
    end
end
###        def user_params
###          params.require(:user).permit(
###            :name, :display_name, :email, :password,
###            :confirmation-password, :organization, :boss
###          )
###        end
  