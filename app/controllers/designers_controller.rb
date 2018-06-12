class DesignersController < ApplicationController

  def index
    
      

  end

  def show
    <% for designer in Designer.all %>
          <a href="/designers/<%= designer.id %>">
          <%= designer.name %>
      </a>

  end

  def destroy

  end

  def new

  end

  def create
      Designer.create name: params["name"],
      redirect_to "/", notice: 
  end

  def edit

  end

  def update

  end

end
