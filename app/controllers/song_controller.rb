class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to @song
    else
      render :new
   end
  end

  def show
    @song = get_song
  end

  def edit
    @song = get_song
  end

  def update
    @album = get_song
      if @song.update_attributes(song_params)
        redirect_to @song
      else
        render :edit
      end
  end

  def destroy
    @song = get_album
    @song.destroy
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :duration, :artist_id)
  end

  def get_album
    Song.find(params[:id])
  end

end
