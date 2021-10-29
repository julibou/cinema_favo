class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
  end

  def create
    movie = Movie.new(movie_params)
    movie.customer = current_customer
    movie.save
    redirect_to movies_index_path

  end

  def new
    @movie = Movie.new
  end

  def edit
     @movie =Movie.find(params[:id])
  end
  
  def destroy
        movie = Movie.find(params[:id])
        movie.destroy
        #redirect_to cart_items_path
  end

    private

  def movie_params
    params.require(:movie).permit(:name, :image, :review, :body)
  end

end
