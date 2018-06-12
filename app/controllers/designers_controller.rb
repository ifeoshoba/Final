class DesignersController < ApplicationController

  def index

  end

  def show

  end

  def destroy

  end

  def new

  end

  def create
      Designer.create name: params["name"],
      redirect_to "/", 
  end

  def edit

  end

  def update

  end

end
