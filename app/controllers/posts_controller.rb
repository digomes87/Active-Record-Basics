class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @r = Post.create(params.require(:post).permit(:title, :body, :author_id))
  end
end
