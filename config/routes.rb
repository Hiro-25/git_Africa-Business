Rails.application.routes.draw do
  devise_for :users
  root  'knowledges#index'
  get   'knowledges' => 'knowledges#index'
  get   'knowledges/new' => 'knowledges#new'
  post  'knowledges' => 'knowledges#create'
  get   'agricultures/index_agriculture' => 'agricultures#index'
  get   'agricultures/new' => 'agricultures#new'
  post  'agricultures' => 'agricultures#create'
  get   'educations/index_education' => 'educations#index'
  get   'educations/new' => 'educations#new'
  post  'educations' => 'educations#create'
  get   'arts/index_art' => 'arts#index'
  get   'arts/new' => 'arts#new'
  post  'arts' => 'arts#create'
end
