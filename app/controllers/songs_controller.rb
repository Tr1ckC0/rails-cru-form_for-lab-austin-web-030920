class SongsController < ApplicationController
    
    def index
        @songs = Song.all
    end

    def new
    end

    def create
        # @artist = Artist.find(song_params(:artist_name))
        # @genre = Genre.find(song_params(:genre_name))
        @song = Song.create(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def show
        set_song
        set_genre
        set_artist
    end

    def edit
        set_song
    end

    def update
        set_song
        @song.update(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end
    
    private

    def set_song
        @song = Song.find(params[:id])
    end

    def set_genre
        @genre = @song.genre
    end

    def set_artist
        @artist = @song.artist
    end

    def song_params(*args)
        params.require(:song).permit(*args)
    end
end
