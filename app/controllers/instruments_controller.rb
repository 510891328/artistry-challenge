class InstrumentsController < ApplicationController
  before_action :set_instrument, except: [:index]
  def index
    @instruments = Artist.all
  end

  def show

  end

  def edit

  end

  def update

  end

  def new

  end

  def create

  end

  private

  def instrument_params
    params.require(:instrument).permit(:name, :classification)
  end

  def set_instrument
    @instrument = Artist.find(params[:id])
  end
end
