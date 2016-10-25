class PostsController < ApplicationController
   before_action :authenticate



  def index
    @posts = User.find(current_user.id).posts
  end

  def new
    @post = Post.new
    @city = City.find(params[:city_id])
  end

  def create
    @post = City.find(params[:city_id])
            .posts
            .create(post_params)

    if @post.save
      flash[:success] = "New post successfully created!"
      redirect_to city_post_path(params[:city_id], @post.id)
    else
      flash[:error] = "Sorry, something went wrong."
      redirect_to :back
    end
  end

  def show
    @user = User.find(current_user.id)
    @post = Post.find(params[:id])
    @city = City.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
