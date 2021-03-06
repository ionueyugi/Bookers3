class UsersController < ApplicationController
      before_action :authenticate_user!

  def index
  	  @users = User.all
  	  @book = Book.new
  end

  def show
      @user = User.find(params[:id])
      @books = @user.books.all
  	  @book = Book.new
  end

  def create
  	  @user = User.new(user_params)
  	  if @user.save
  	  	flash[:notice] = "successfully"

  	  redirect_to user_path(@user.id)
  	  else
  	  	@users = User.all
  	  	render action: :index
  	  end
  end

  def edit
  	 @user = User.find(params[:id])
     if @user.id != current_user.id
        redirect_to user_path(current_user.id)
     end

  end

  def update
  	  @user = User.find(params[:id])
  	  if @user.update(user_params)
  	     flash[:notice] = "successfully"
  	     redirect_to user_path(current_user.id)
      else
        render action: :edit
      end
  end

  private
  def user_params
  	params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
