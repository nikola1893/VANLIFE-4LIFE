class VansController < ApplicationController
  def index
    @vans = Van.all
  end

  def show
    @vans = Van.find(params[:id])
  end
end
