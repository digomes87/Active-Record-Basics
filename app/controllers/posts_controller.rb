class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # @r = Post.create(params.require(:post).permit(:title, :body, :author_id))
    @r = Author.find(params[:author_id]).posts.create(params.require(:post).permit(:title, :body, :author_id))
  end
end
