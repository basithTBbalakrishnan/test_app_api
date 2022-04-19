class Api::V1::UsersController < ApplicationController
  
  after_action :create_user_api_token, only: [:create]
  
  def index
    
  end
  
  def create
    user = User.new(user_params)
    if user.save
      render json: "user saved"
    else 
      render json: "Error accured please try again"
    end
  end
  
  private 
  
  def user_params
    params.require(:user).permit(:username,:password,:email,:user_api_token)
  end
  
  def create_user_api_token
    user = User.find_by_email(params[:user][:email])
    user_api_token = User.generate_user_api_token user[:id]
    user.update_attribute(:user_api_token,user_api_token)
  end
  
end
