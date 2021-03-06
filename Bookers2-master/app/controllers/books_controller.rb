class BooksController < ApplicationController
      before_action :authenticate_user!
  def index
  	  @book = Book.new
  	  @books = Book.all
      @bookuser = @book.user
  end

  def show
      @book = Book.find(params[:id])
      @bookuser = @book.user
  	  @booka = Book.new
      @user = User.new
  end

  def edit
  	  @book = Book.find(params[:id])
     if @book.user != current_user
        redirect_to books_path
     end
  end

  def update
  	  @book = Book.find(params[:id])
  	  if @book.update(book_params)
  	    flash[:notice] = "successfully"
  	    redirect_to book_path(@book.id)
  	else
  		render action: :edit
  	end
  end

  def create
  	  @book = Book.new(book_params)
  	  @book.user_id = current_user.id
  	  if @book.save
  	  	flash[:notice] = "successfully"

  	  redirect_to book_path(@book.id)
  	  else
  	  	@books = Book.all
  	  	render action: :index
  	  end
  end

  def destroy
  	  book = Book.find(params[:id])
  	  book.destroy
  	  redirect_to books_path
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
