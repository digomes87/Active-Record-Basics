# frozen_string_literal: true

class LoginsController < ApplicationController
  def create
    @author = Author.find_by_email(params[:email])
    unless @author.nil?
      session[:user_id] = (Author.find_by_email(params[:email]).id if @author.password == params[:password])
    end
    redirect_to('/posts')
  end
end
