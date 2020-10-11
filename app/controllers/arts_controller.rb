class ArtsController < ApplicationController

  before_action :move_to_index, except: :index
  
  def index
    @arts = Art.all
  end
  
  def new
  end
  
  def create
    Art.create(art_params)
  end

  private
  def art_params
    params.permit(:name, :image, :text)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
