Rails.application.routes.draw do
  
  # get 'posts/index'

	namespace :admin do
	  get 'dashboard/main'
	  get 'dashboard/user'
	  get 'dashboard/blog'
	end

  get 'about', to: 'pages#about' 
  get 'leadgen/advertising/gen/lead', to: 'pages#contact', as: 'lead'

  resources :blogs
  resources :posts

  get 'posts/*missing', to: 'posts#missing' #globing routes
  get 'query/:else/:another_one', to: 'pages#something' #dynamic routes
  get 'query/:else', to: 'pages#something'
  
  root to: 'pages#home'
end
