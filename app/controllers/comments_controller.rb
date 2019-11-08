class CommentsController < ApplicationController
  def new
    @com = Comment.new
    @post = nil
  end
end
