class BookersController < ApplicationController
  def index
    @bookers = Booker.all
  end

  def show
    @bookers = Booker.find(params[:id])
  end

  def new
    @booker = Booker.new
  end

  def create
    bookers = Booker.new(bookers_params)
    if bookers.save
      redirect_to booker_path(bookers.id)
      flash[:notice] = "Book was successfully created."
    else
      flash[:notice] = "error"
    end
  end

  def edit
    @bookers = Booker.find(params[:id])
  end

  def update
    bookers = Booker.find(params[:id])
    bookers.update(bookers_params)
    redirect_to booker_path(bookers)
  end

  def destroy
    bookers = Booker.find(params[:id])
    bookers.destroy
    redirect_to "/bookers"
  end

  private
  def bookers_params
    params.permit(:title, :body)
  end
end
