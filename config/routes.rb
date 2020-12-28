Rails.application.routes.draw do
  devise_for :users
  root  'knowledges#index'
  get   'knowledges' => 'knowledges#index'
  get   'knowledges/new' => 'knowledges#new'
  post  'knowledges' => 'knowledges#create'
  delete  'knowledges/:id'  => 'knowleges#destroy'
  get   'agricultures/index_agriculture' => 'agricultures#index'
  get   'agricultures/new' => 'agricultures#new'
  post  'agricultures' => 'agricultures#create'
  delete  'agricultures/:id'  => 'agricultures#destroy'
  get   'agricultures/:id/edit'  => 'agricultures#edit'
  patch   'agricultures/:id'  => 'agricultures#update'
  get 'agricultures/:id' => 'agricultures#show'
  resources :agricultures do
    resources :comments, only: [:create]
  end
  post 'agricultures/:id' => 'agricultures#show'
  get   'educations/index_education' => 'educations#index'
  get   'educations/new' => 'educations#new'
  post  'educations' => 'educations#create'
  delete  'educations/:id'  => 'educations#destroy'
  get   'educations/:id/edit'  => 'educations#edit'
  patch   'educations/:id'  => 'educations#update'
  resources :educations do
    resources :comments, only: [:create]
  end
  get   'arts/index_art' => 'arts#index'
  get   'arts/new' => 'arts#new'
  post  'arts' => 'arts#create'
  delete  'arts/:id'  => 'arts#destroy'
  get   'arts/:id/edit'  => 'arts#edit'
  patch   'arts/:id'  => 'arts#update'
  resources :arts do
    resources :comments, only: [:create]
  end
  get   'users/:id'   =>  'users#show'
  resources :users, only: [:show]
end