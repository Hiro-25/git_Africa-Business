class AgriculturesController < ApplicationController

  def index
    @agricultures = Agriculture.all
  end
  
  def new
  end
  
  def create
    Agriculture.create(agriculture_params)
  end

  private
  def agriculture_params
    params.permit(:name, :image, :text)
  end

end