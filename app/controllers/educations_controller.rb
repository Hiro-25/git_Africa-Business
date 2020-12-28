class EducationsController < ApplicationController

  before_action :move_to_index, except: :index
  
  def index
    @educations = Education.order("created_at DESC").page(params[:page]).per(5)
  end
  
  def new
  end
  
  def create
    Education.create(name: education_params[:name], image: education_params[:image], text: education_params[:text], user_id: current_user.id)
  end
  
  def destroy
    education = Education.find(params[:id])
    if education.user_id == current_user.id
      education.destroy
    end
  end
  
  def edit
    @education = Education.find(params[:id])
  end
  
  def update
    education = Education.find(params[:id])
    if education.user_id == current_user.id
      education.update(education_params)
    end
  end

  private
  def education_params
    params.permit(:name, :image, :text)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end