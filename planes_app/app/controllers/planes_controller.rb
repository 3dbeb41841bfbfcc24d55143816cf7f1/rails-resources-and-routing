class PlanesController < ApplicationController

  def index
    @planes = Plane.all
  end

  def new
    @plane = Plane.new
  end

  def create
    plane = params.require(:plane).permit(:name, :kind, :description)
    Plane.create(plane)
    redirect_to planes_path
  end

  def show
    @plane = Plane.find(params[:id])
  end


end