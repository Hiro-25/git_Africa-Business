class AgriculturesController < ApplicationController

  before_action :move_to_index, except: [:index, :show]
  
  def index
    @agricultures = Agriculture.order("created_at DESC").page(params[:page]).per(5)
  end
  
  def new
  end
  
  def create
     Agriculture.create(name: agriculture_params[:name], image: agriculture_params[:image], text: agriculture_params[:text], user_id: current_user.id)
  end
  
  def destroy
    agriculture = Agriculture.find(params[:id])
    if agriculture.user_id == current_user.id
      agriculture.destroy
    end
  end
  
  def edit
    @agriculture = Agriculture.find(params[:id])
  end
  
  def update
    agriculture = Agriculture.find(params[:id])
    if agriculture.user_id == current_user.id
      agriculture.update(agriculture_params)
    end
  end
  
  def show
    @agriculture = Agriculture.find(params[:id])
    @comments = @agriculture.comments.includes(:user)
  end

  private
  def agriculture_params
    params.permit(:name, :image, :text)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end