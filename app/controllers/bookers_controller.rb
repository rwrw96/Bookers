class BookersController < ApplicationController
  def index
  end

  def show
    @bookers = Booker.find(params[:id])
  end

  def new
    @bookers = Booker.new
  end

  def create
    bookers = Booker.new(params[:id])
    bookers.save
    redirect_to "/"
  end

  def edit
  end
end
