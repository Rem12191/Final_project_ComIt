Rails.application.routes.draw do
  root 'main_page#home'

  get 'about', to: 'main_page#about'
  get 'contact', to: 'main_page#contact'
  get 'menu', to: 'main_page#menu'
  get 'expert', to: 'main_page#expert'
  get 'testimonials', to: 'main_page#testimonials'
  get 'blog', to: 'main_page#blog'

  resources :contacts, only: [:new, :create]
  get '/contact', to: 'contacts#new'
  post '/contact', to: 'contacts#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
