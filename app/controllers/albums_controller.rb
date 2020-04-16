class AlbumsController < ApplicationController
    
    def index
    end

    def show
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
