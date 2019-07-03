class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if @user
      sign_in(@user)
      render "api/users/show"
    else
      render json: = ['The email address and password you entered do not match.']
    #   render :new
    end
  end

  def destroy
    sign_out
    render "api/users/show"
  end
end
