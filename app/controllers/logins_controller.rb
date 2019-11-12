# frozen_string_literal: true

class LoginsController < ApplicationController
  def create
    @author = Author.find_by_email(params[:email])
    if !@author.nil?
      session[:user_id] = if @author.password == params[:password]Author.find_by_email(params[:email]).id
      end
    end
    redirect_to('/posts')
  end
end
