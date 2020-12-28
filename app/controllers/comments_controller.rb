class CommentsController < ApplicationController
  def create
    comment_agriculture = Comment.create(text: comment_params[:text], agriculture_id: comment_params[:agriculture_id], user_id: current_user.id)
    redirect_to "/agricultures/#{comment_agriculture.agriculture_id}" and return
    comment_education = Comment.create(text: comment_params[:text], education_id: comment_params[:education_id], user_id: current_user.id)
    redirect_to "/educations/#{comment_education.education_id}" and return
    comment_art = Comment.create(text: comment_params[:text], art_id: comment_params[:art_id], user_id: current_user.id)
    redirect_to "/arts/#{comment_art.art_id}" and return
  end
  
  private
  def comment_params
    params.permit(:text, :agriculture_id)
    params.permit(:text, :education_id)
    params.permit(:text, :art_id)
  end
end