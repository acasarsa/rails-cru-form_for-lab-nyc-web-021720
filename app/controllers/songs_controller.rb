class SongsController < ApplicationController
  def index 
    @songs = Song.all
    @genre = Genre.find_by(params[:id])
    @artist = Artist.find_by(params[:id])
  end
  
  def new
    @song = Song.new
  end
  
  def create
    @song = Song.create(song_params)

    redirect_to @song
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])

  end

  def update
    @song = Song.find(params[:id])

    @song.update(song_params)
    redirect_to @song
  end

  private 
  def song_params
    params.require(:song).permit(:name, :artist_name, :genre_name)
  end
end
