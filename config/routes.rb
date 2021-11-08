Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "flats#index"
  ##create the route for the show page
  #available as params[:id => false]
  get 'flats/:id', to: "flats#show", as: "flat"
end
