class BandsController < ApplicationController

  def index
    @bands = Band.all
    render :index
  end

  def create
    @band = Band.create(band_params)

    if @band
      redirect_to bands_url
    else
      flash[:errors] = ["Bands have naes, man!"]
      redirect_to new_band_url
    end
  end

  def new
    @band = Band.new
    render :new
  end

  def edit
    @band = Band.find_by(params[:id])
    render :edit
  end

  def show
    @band = Band.find(params[:id])
    render :show
  end

  def update
    @band = Band.find_by(params[:id])
  end

  def destroy

  end

  private

  def band_params
    params.require(:band).permit(:name)
  end

end
