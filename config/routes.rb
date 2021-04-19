Rails.application.routes.draw do
  resources :chirps
  post 'chirps/:id/upvote' => 'chirps#upvote', :as => :upvote_chirp
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
