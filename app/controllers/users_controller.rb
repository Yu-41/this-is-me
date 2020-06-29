class UsersController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def search
    if params[:name].present?
      @users = User.where('name LIKE ?', "%#{params[:name]}%")
    else
      @users = User.none
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image, :content, :link)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
