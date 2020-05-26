class UsersController < ApplicationController
  # def search
  #   @users = User.search(params[:qkeyword])
  # end
  
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image, :content, :link)
  end
end
