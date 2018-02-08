class PostsController < ApplicationController

  def index
    @posts = Post.all
    @title = 'Posts'
  end

  def show
    @post = Post.find(params[:id])
  end

end
