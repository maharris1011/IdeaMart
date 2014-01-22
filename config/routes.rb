OurMantaIdeas::Application.routes.draw do
  get "home/index"

# route the root of the site to the list of all meetings
  root :to => "home#index" 

  
end
