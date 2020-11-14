class Api::CoffesController < ApplicationController
  def index
    render "index.json.jb"
  end
end
