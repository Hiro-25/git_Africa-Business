class AgriculturesController < ApplicationController

  before_action :move_to_index, except: :index
  
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
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end