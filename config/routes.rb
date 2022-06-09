Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, only: [:show, :index]
  #try this at work:
  #get 'show', to: 'articles#show'
  #I mean it doesn't specifically point to the show html but still sees it, how does it know that the params is id?
  #check what routes do you have and maybe run the "rails generate controller articles"
  #or try rails generate scaffold Article title:string description:text
end
