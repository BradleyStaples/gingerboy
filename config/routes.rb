GingerBoyDev::Application.routes.draw do

  get "projects/index"
  root :to => "home#index"
  match "/" => "home#index", :as => :home
  match "/portfolio" => "home#portfolio", :as => :portfolio
  match "/projects" => "home#projects", :as => :projects
  match '/contact' => 'home#contact', :as => 'contact', :via => :get
  match '/contact' => 'home#contacted', :as => 'contacted', :via => :post

end
