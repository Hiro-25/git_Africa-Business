class ArtsController < ApplicationController

  before_action :move_to_index, except: :index
  
  def index
    @arts = Art.order("created_at DESC").page(params[:page]).per(5)
  end
  
  def new
  end
  
  def create
    Art.create(name: art_params[:name], image: art_params[:image], text: art_params[:text], user_id: current_user.id)
  end
  
  def destroy
    art = Art.find(params[:id])
    if art.user_id == current_user.id
      art.destroy
    end
  end
  
  def edit
    @art = Art.find(params[:id])
  end
  
  def update
    art = Art.find(params[:id])
    if art.user_id == art_user.id
      art.update(art_params)
    end
  end

  private
  def art_params
    params.permit(:name, :image, :text)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
