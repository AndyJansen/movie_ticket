class MoviesController < ApplicationController
  before_action :redirect_user, only: [:destroy]
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    @movie.save
    redirect_to @movie
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
   
    redirect_to movies_path
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :director, :description, :price)
  end

  def redirect_user
    redirect_to root_path
  end
end
