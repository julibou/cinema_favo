class BookmarksController < ApplicationController
   before_action :authenticate_customer!

  def create
    @movie = Movie.find(params[:movie_id])
    bookmark = @movie.bookmarks.new(customer_id: current_customer.id)
    if bookmark.save
      redirect_to request.referer
    else
      redirect_to request.referer
    end
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    bookmark = @movie.bookmarks.find_by(customer_id: current_customer.id)
    if bookmark.present?
        bookmark.destroy
        redirect_to request.referer
    else
        redirect_to request.referer
    end
  end
end

