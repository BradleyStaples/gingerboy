class Project < ActiveRecord::Base
  attr_accessible :blurb, :description, :name, :slug, :url, :thumb, :image, :github
end
