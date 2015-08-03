class MoviesController < ApplicationController
  
  def new
    @movie = Movie.new
  end

  def create 
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else 
      render 'new'
    end
  end

  def edit 
    @movie = Movie.find(params[:id])
  end

  def update
    if @movie.update(movie_params)
      flash[:success] = 'Movie updated'
      redirect_To movies_path
    else
      render 'edit'
    end 
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :summary)
  end
end