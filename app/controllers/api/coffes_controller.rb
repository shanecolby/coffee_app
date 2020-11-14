class Api::CoffesController < ApplicationController
  def index
    @coffes = Coffee.all
    render "index.json.jb"
  end

  def show
    @coffee = Coffee.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @coffee = Coffee.new(
      name: "The DARK-SIDE", 
      price: 6.95, 
      size: "medium", 
      description: "For those who go against the grain. This is for those who lurk in the shadows."
    )
    render "show.json.jb"
  end
end
