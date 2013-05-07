class Portfolio < ActiveRecord::Base
  attr_accessible :description, :name, :thumb, :url
end
