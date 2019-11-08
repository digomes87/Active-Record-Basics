class AuthorsController < ApplicationController
  def new
    @r = Author.create(username: "tre", email: "2yochiwarez@gmail.com",password:"123456")
  end
end
