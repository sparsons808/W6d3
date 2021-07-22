class ArtworksController < ApplicationController 
    def index
        @artworks = Artwork.find(params[:user_id])
        render json: @artworks
    end

    def create
        @artwork = Artwork.new(artwork_params)
        if @artwork.save
            render json: @artwork
        else
            render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        render json: Artwork.find(params[:id])
    end

    def update
        @artwork = Artwork.find(params[:id])
        
        if @artwork.update(artwork_params)
            redirect_to artwork_url(@artwork)
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end

    def destroy
        @artwork = User.find(params[:id])
        @artwork.destroy
        redirect_to artworks_url
    end

    private

    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end