class MoviesController < ApplicationController
  def index
  end

  def show
  end

  def create
    movie = Movie.new(movie_params)
    movie.save



  end

  def new
    @movie = Movie.new
  end

  def edit
  end

   private
  def movie_params
    params.require(:movie).permit(:name, :image, :review)
  end

  end
