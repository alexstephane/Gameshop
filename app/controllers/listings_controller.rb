class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end
  
  def show 
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing= Listing.new(listing_strong_params)
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end  
  end

            # def edit
            #   @listing = Listing.find(params[:id])
            #   render :edit
            # end

            # def update
            #   Listing.find(params[:id])
            #   Listing.update(listing_strong_params)
            #   redirect_to listing_path(@game)
            
            #   render :edit
            # end

            

  def buy
    @listing = Listing.find(params[:id])
    @listing.update(user_id: session[:user_id], availability: false)
    if @listing.valid?
      redirect_to user_path(session[:user_id])
    else
      redirect_to listing_path(@listing)
    end
  end

  def sell
    @listing = Listing.find(params[:id])
    @listing.update(user_id: session[:user_id], availability: true)
    if @listing.valid?
      redirect_to user_path(session[:user_id])
    else
      redirect_to listing_path(@listing)
    end
  end
    
  def destroy
    Listing.destroy(params[:id])
    redirect_to listings_path
  end


  
  private

  def listing_strong_params
    params.require(:listing).permit(:game_id, :user_id, :console_type_id, :quality, :condition, :listed_price, :availability)
  end

end

  