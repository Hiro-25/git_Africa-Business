class EducationsController < ApplicationController

  before_action :move_to_index, except: :index
  
  def index
    @educations = Education.all
  end
  
  def new
  end
  
  def create
    Education.create(education_params)
  end

  private
  def education_params
    params.permit(:name, :image, :text)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end