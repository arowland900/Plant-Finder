class PostsController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
  end

  def show
    @posts = Post.all
    @user.id = @posts.user_id
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to user_path(current_user.id)
    else
      redirect_to new_posts_path
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:image_url, :description)
  end
end
