class SpectaclesController < ApplicationController

  def index
        
  end

  def show

  end

  def destroy
        Spectacle.delete(params["id"])
        redirect_to "/spectacles", notice: ":(!"

  end

  def new
        if session["user_id"] == nil
        redirect_to "/", notice: "Nice try."
    end

  end

  def create
        Spectacle.create brand: params["brand"],
                price: (params["price"].to_f * 100).to_i,
                brand_id: params["brand_id"],
                summary: params["summary"],
                photo_url: params["photo_url"]

    redirect_to "/spectacles", notice: "Thanks :)"
  
    
  end

  def edit

  end

  def update
        spectacle = Spectacle.find_by(id: params["id"])

    spectacle.update brand: params["brand"],
                summary: params["summary"],
                brand_id: params["brand_id"],
                photo_url: params["photo_url"],
                price: params["price"].to_f * 100

    redirect_to "/spectacles/#{spectacle.id}", notice: "updated."
  end

  

end
