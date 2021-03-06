class AccountActivationsController < ApplicationController
  
  def edit 
    user = User.find_by(email:params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.update_attribute(:activated,true)
      log_in user
      flash[:success] = "アカウントが有効化されました"
      redirect_to user
    else
      flash[:danger] = "Invalid activation link"
      redirect_to root_url
    end
  end
end
