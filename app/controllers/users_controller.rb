class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.find(params[:id])
    @users = User.all
    #@book_new = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)  
  end
  
  def index
    @users = User.all
    @book = Book.new
  end
  
  def user_params
    params.require(:user).permit(:name, :introduction)
  end
  
end
