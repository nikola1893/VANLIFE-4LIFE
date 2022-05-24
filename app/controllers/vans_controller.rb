class VansController < ApplicationController
  def index
    @vans = Van.all
  end

  def show
    @van = Van.find(params[:id])
  end
end
