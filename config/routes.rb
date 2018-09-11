Rails.application.routes.draw do
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about' 
  get 'home', to: 'pages#home'
  get 'error', to: 'pages#error'

  get 'blog', to: redirect("https://www.google.co.in/")

  get 'welcome/index'
  
  resources :articles do
  	resources :comments
  end

  root 'welcome#index'

  get "*path", to: redirect("/error")
end
		