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
        if @movie.save
            redirect_to @movie, notice: "Movie has been created with success"
        else
            render :new
        end
    end

    def show
       
    end

    def edit
        
    end

    def update
        if @movie.update(movie_params)
            redirect_to @movie, notice: "Movie has been updated with success"
        else
            render :edit     
        end
    end

    def destroy
        @movie.destroy
        redirect_to movies_url, alert: "Movie has been successfully destroyed"
    end

    private

    def set_movie
        @movie = Movie.find(params[:id])
    end

    def movie_params
        params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
    end
end
