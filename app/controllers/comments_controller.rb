# frozen_string_literal: true

class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @auth = Author.find(params[:author_id])
    @com = Comment.new
  end

  def create
    @r = Comment.create(params.require(:comment).permit(:title, :body, :author_id, :post_id))
    redirect_to("/posts/" + params[:post_id])
  end
end
