# == Schema Information
#
# Table name: portfolios
#
#  id            :integer          not null, primary key
#  display_order :integer
#  name          :string(255)
#  url           :string(255)
#  description   :text
#  image         :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Portfolio < ActiveRecord::Base
  attr_accessible :description, :name, :image, :url, :display_order
end
