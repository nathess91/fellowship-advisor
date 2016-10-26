class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
    @city = City.friendly.find(params[:city_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post
              .comments
              .new(comment_params)

    @comment.user_id = current_user.id
    @comment.save

    if @comment.save
      flash[:success] = "New comment successfully created!"
      redirect_to city_post_path(params[:city_id], @post.id)
    else
      flash[:error] = "Sorry, something went terribly amiss."
      redirect_to :back
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(comment_params)
    redirect_to city_post_path(params[:city_id], @post.id)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end # end comment controller
