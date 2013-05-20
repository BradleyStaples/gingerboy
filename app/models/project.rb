class Project < ActiveRecord::Base
  attr_accessible :blurb, :description, :name, :slug, :url, :image, :github, :display_order
end
