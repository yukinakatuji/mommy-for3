class UsersController < ApplicationController

  def index
  # posts = Post.find(params[:id])
  # tweets = Tweet.find(params[:id])
  end
  
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @tweets = @user.tweets.page(params[:page]).per(5).order("created_at DESC")
    # @tweets = Kaminari.paginate_array(@products).page(params[:page]).per(5)
  end

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
    params.require(:user).permit(:name, :email)
  end
end