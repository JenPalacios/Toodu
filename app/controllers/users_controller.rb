class UsersController < ApplicationController
  
  def show
    @name = current_user.name
    @email = current_user.email
  end
end
