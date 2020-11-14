class Api::CoffesController < ApplicationController
  def index
    @coffes = Coffee.all
    render "index.json.jb"
  end

  def show
    @coffee = Coffee.find_by(id: params[:id])
    render "show.json.jb"
  end
end
