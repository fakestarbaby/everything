Everything::Application.routes.draw do
  root :to => "welcome#index"

  match '/auth/:provider/callback' => 'sessions#callback'
  match '/signout' => 'sessions#destroy', :as => :signout
end
