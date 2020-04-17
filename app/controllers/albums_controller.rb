class AlbumsController < ApplicationController
    
    def index
        if current_user
            @albums = current_user.albums
        else
            redirect_to new_user_session_path
        end
    end

    def show
        if current_user
            @album = Album.find(params[:id])
        else
            redirect_to new_user_session_path
        end
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
