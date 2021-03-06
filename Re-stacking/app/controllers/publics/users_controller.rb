class Publics::UsersController <  Publics::ApplicationController
  def show
  	  @user = User.find(params[:id])
  	  @posts = @user.posts.all
  	end

  def update
  	@user = User.find(params[:id])
  	  if @user.id == current_user.id
  	  	 @user.update(user_params)
  	  	 redirect_to user_path(current_user)
  	  end
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to root_path
  end
  private
  def user_params
  	  params.require(:user).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :nick_name, :goal, :profile_image, :email)
  end
end
