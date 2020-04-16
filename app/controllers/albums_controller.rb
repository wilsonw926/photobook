class AlbumsController < ApplicationController
    
    def index
        @albums = Album.all
    end

    def show
        @albums = Album.find(params[:id])
    end

    def edit
    end

    def new
    end

    def create
    end

    def destroy
    end

    def update
    end

    private
    def album_params
      params.require(:album).permit(:name, images: [])
    end

end
