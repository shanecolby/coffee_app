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
    results = Geocoder.search(params[:address])
    the_latitude = results.first.coordinates[0]
    the_longitude = results.first.coordinates[1]
    p the_latitude
    

    @coffee = Coffee.new(
      name: params[:name], 
      price: params[:price], 
      size: params[:size], 
      description: params[:description],
      address: params[:address],
      latitude: the_latitude,
      longitude: the_longitude,
    )
    @coffee.save
    render "show.json.jb"
  end

  def update
    @coffee = Coffee.find_by(id: params[:id])
    
    @coffee.name = params[:name]  || @coffee.name
    @coffee.price = params[:price] || @coffee.price
    @coffee.size = params[:size] || @coffee.size
    @coffee.description = params[:description] || @coffee.description
    @coffee.save
    
    render "show.json.jb"
  end

  def destroy
    @coffee = Coffee.find_by(id: params[:id])
    @coffee.destroy
    render json: {message: "Coffee removed"}

  end
end
