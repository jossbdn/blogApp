class PostsController < ApplicationController

  def index
    @posts = Post.all
    @title = 'Posts'
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create

  end

end
