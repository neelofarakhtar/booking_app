class MoviesController < ApplicationController
  def index
    @movies = Movie.order(created_at: :desc)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new

    @movie= Movie.new
  end

  def create
    @movie =Movie.create!(name: params[:movie][:name])
    redirect_to root_path 
  end
end