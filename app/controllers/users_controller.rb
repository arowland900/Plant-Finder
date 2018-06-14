class UsersController < ApplicationController
  before_action :authorize, only: [:edit, :update, :destroy]

  def index
    @post = Post.new
  end

  def show
    @post = Post.new
    @user = User.find(params[:id])

    # unless current_user.id == @user.id
    #   redirect_to user_path(current_user.id)
    # end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      redirect_to 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    puts params
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      flash[:warning] = "Please confirm your password."
      redirect_to edit_user_path(current_user)
    end
  end

  def destroy
    current_user.destroy  
    session[:user_id] = nil
    redirect_to new_user_path
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end

# {
#   "user"=>{
#     "name"=>"Alexander",
#     "email"=>"arowland900@gmail.com",
#     "admin"=>true,
#     "banana"=>"boom"
#   },
#   "controller"=>"users",
#   "action"=>"update",
#   "id"=>"2"
# }

# {
#     "name"=>"Alexander",
#     "email"=>"arowland900@gmail.com"
# }