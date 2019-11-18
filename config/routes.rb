Rails.application.routes.draw do
  get 'about', to: 'pages#about' 
  get 'leadgen/advertising/gen/lead', to: 'pages#contact', as: 'lead'

  resources :blogs
end
