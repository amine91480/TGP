class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new

  end

  def create
    @user = User.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.city_id = 24
    @user.email = params[:email]
    @user.password = params[:password]

    puts @user.inspect
    if @user.save
      redirect_to(users_path)
    else
      render :new
    end
  end
end

