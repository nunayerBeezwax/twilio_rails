class UsersController < ApplicationController
  def show
    @contact = Contact.new
  end
end
