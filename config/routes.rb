#== Route Map
# Generated on 20 May 2013 21:04
#
#           root      /                         home#index
#           home      /                         home#index
#      portfolio      /portfolio(.:format)      home#portfolio
#       projects      /projects(.:format)       home#projects
#        contact GET  /contact(.:format)        home#contact
#      contacted POST /contact(.:format)        home#contacted

GingerBoyDev::Application.routes.draw do
  get "projects/index"
  root :to => "home#index"
  match "/" => "home#index", :as => :home
  match "/portfolio" => "home#portfolio", :as => :portfolio
  match "/projects" => "home#projects", :as => :projects
  match '/contact' => 'home#contact', :as => 'contact', :via => :get
  match '/contact' => 'home#contacted', :as => 'contacted', :via => :post

end
