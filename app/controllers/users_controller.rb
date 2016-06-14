class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])    
    if @user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end
  end

  def update
    @user = User.find(params[:id])
    if @user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end
    
    @user.update_attributes(user_params)

    if @user.valid? 
      redirect_to user_path
    else
      render :edit, status: :unprocessable_entity
    end 
  end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end
end
