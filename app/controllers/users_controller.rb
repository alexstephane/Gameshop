class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  end

  def sell
    @listing = Listing.find(params[:id])
    @listing.update(user_id: 5, availability: false)
    if @listing.valid?
      redirect_to user_path(5)
    else
      redirect_to listing_path(@listing)
    end
  end

  def destroy
    User.destroy(params[:id])
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end

end


