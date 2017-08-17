class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :edit, :update, :destroy]

  def index
    @instruments = Instrument.all
    if params[:query].present?
      @instruments = Instrument.search_by_title_description(params[:query])
      @instruments = @instruments.near(params[:location], 50) unless params[:location].blank?
    end
  end

  def show
    @instrument = Instrument.find(params[:id])
    @instruments = Instrument.where.not(latitude: nil, longitude: nil)
    @instrument_coordinates = { lat: @instrument.latitude, lng: @instrument.longitude }
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    if @instrument.save
      redirect_to instrument_path(@instrument)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @instrument.update(instrument_params)
      redirect_to instrument_path(@instrument)
    else
      render :edit
    end
  end

  def destroy
    @instrument.destroy
    redirect_to instruments_index
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end

  def instrument_params
    params.require(:instrument).permit(:title, :description, :location, :price, :photo, :category_id)
  end

end
