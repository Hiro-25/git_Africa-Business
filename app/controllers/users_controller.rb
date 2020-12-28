class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @agricultures = current_user.agricultures
  end 
end