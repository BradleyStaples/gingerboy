GingerBoyDev::Application.routes.draw do

  get "projects/index"

  root :to => "home#index"
  match "/" => "home#index", :as => :home
  match "/contact" => "home#contact", :as => :contact
  match "/contacted" => "home#contacted", :as => :contacted
  match "/resume" => "home#resume", :as => :resume
  match "/portfolio" => "home#portfolio", :as => :portfolio
  match "/projects" => "home#projects", :as => :projects
  match '/projects/:slug' => 'projects#index', :as => :project

end
