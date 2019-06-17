class MoviesController < ApplicationController
    before_action :set_movie, only: [:show, :edit, :update, :destroy]

    def index
        @movies = Movie.all
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(movie_params)
        @movie.save
        redirect_to @movie
    end

    def show
       
    end

    def edit
        
    end

    def update
        @movie.update(movie_params)
        redirect_to @movie
    end

    def destroy
        @movie.destroy
        redirect_to movies_url
    end

    private

    def set_movie
        @movie = Movie.find(params[:id])
    end

    def movie_params
        params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
    end
end
