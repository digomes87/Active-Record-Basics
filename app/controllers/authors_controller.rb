# frozen_string_literal: true

class AuthorsController < ApplicationController
  def new
    @user = Author.new
  end

  def create
    @r = Author.create(params.require(:author).permit(:username, :email, :password))
  end
end
