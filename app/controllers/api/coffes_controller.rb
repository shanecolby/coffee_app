class Api::CoffesController < ApplicationController
  def index
    @coffes = Coffee.all
    render "index.json.jb"
  end
end
