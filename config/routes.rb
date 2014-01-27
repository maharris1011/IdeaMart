OurMantaIdeas::Application.routes.draw do
  devise_for :users

  resources :ideas do
  	resources :votes
  end

  resources :votes
  
  get "home/index"

# route the root of the site to the list of all meetings
  root :to => "home#index" 

  
end
