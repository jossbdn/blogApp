class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comment.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comment.find(params[:id])
    if @comment.user_id == current_user.id
      @comment.destroy
    end
    redirect_to @post
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
