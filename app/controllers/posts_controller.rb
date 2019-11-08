class PostsController < ApplicationController
  def new
    @r = Post.create(title: "titlesfs", author_id: 1)
  end
end
