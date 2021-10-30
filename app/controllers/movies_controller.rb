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
    redirect_to movies_path

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
        redirect_to customer_path(current_customer.id)
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to customer_path
  end

    private

  def movie_params
    params.require(:movie).permit(:name, :image, :review, :body)
  end

end
