class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.user_id == current_user.id
      if @post.update(article_params)
        redirect_to posts_path
      else
        render 'edit'
      end
    else
      redirect_to @post
    end

  end

  def create
    #render plain: params[:post].inspect
    @post = Post.new(article_params)
    @post.user_id = current_user.id
    @post.save

    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private

  def article_params
    params.require(:post).permit(:title, :content, :status)
  end

end