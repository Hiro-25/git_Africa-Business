Rails.application.routes.draw do
  devise_for :users
  root  'knowledges#index'
  get   'knowledges' => 'knowledges#index'
  get   'knowledges/new' => 'knowledges#new'
  get   'knowledges/index_agriculture' => 'agricultures#index'
  post  'knowledges' => 'knowledges#create'
end
