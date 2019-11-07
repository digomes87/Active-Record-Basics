class UsersController < ApplicationController
  def new
    @r = User.create(name: "yochiwarez", email: "yochiwarez@gmail.com")

  end
end
