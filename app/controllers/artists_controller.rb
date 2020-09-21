class ArtistsController < ApplicationController
  before_action :set_artist, except: [:index, :create, :new]
  def index
    @artists = Artist.all
  end

  def show

  end

  def edit

  end

  def update
    if @artist.update(artist_params)
      @artist.update(artist_params)
      redirect_to @artist
    else
      render :edit
    end
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist.new(artist_params)
    if @artist.valid?
      @artist.save
      redirct_to @artist
    else
      render :new
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :age, :title, instrument_ids: [])
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
