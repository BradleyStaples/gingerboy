class Portfolio < ActiveRecord::Base
  attr_accessible :description, :name, :image, :url, :display_order
end
