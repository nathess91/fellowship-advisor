class PostsController < ApplicationController
   before_action :authenticate



  def index
    @posts = User.friendly.find(current_user.id).posts
  end

  def new
    @post = Post.new
    @city = City.find(params[:city_id])
  end

  def create
    @post = City.friendly.find(params[:city_id])
            .posts
            .new(post_params)

    @post.user_id = current_user.id
    @post.save

    if @post.save
      flash[:success] = "New post successfully created!"
      redirect_to city_post_path(params[:city_id], @post.id)
    else
      flash[:error] = "Sorry, something went wrong."
      redirect_to :back
    end
  end

  def show
    @user = User.friendly.find(current_user.id)
    @post = Post.find(params[:id])
    @city = City.friendly.find(params[:city_id])
    @comments = Comment.where(post_id: params[:id])
    @comment_new = Comment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :back
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
