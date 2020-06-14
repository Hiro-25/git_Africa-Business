Rails.application.routes.draw do
  devise_for :users
  root  'knowledges#index'
  get   'knowledges' => 'knowledges#index'
  get   'knowledges/new'  =>  'knowledges#new'
  post  'knowledges'      =>  'knowledges#create'
end
