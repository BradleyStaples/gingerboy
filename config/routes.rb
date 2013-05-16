GingerBoyDev::Application.routes.draw do

  get "projects/index"

  root :to => "home#index"
  match "/" => "home#index", :as => :home
  match "/contact" => "home#contact", :as => :contact
  match "/contacted" => "home#contacted", :as => :contacted
  match "/portfolio" => "home#portfolio", :as => :portfolio
  match "/projects" => "home#projects", :as => :projects

end
