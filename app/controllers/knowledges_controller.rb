class KnowledgesController < ApplicationController

  def index
    @knowledges = Knowledge.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end
  
  def create
    Knowledge.create(name: knowledge_params[:name], image: knowledge_params[:image], text: knowledge_params[:text], user_id: current_user.id)
  end
  
  def destroy
    knowledge = knowledge.find(params[:id])
    if knowledge.user_id == current_user.id
      knowledge.destroy
    end
  end

  private
  def knowledge_params
    params.permit(:name, :image, :text)
  end

end
