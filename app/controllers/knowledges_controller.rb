class KnowledgesController < ApplicationController

  def index
    @knowledges = Knowledge.all
  end

  def new
  end
  
  def create
    Knowledge.create(knowledge_params)
  end

  private
  def knowledge_params
    params.permit(:name, :image, :text)
  end

end
