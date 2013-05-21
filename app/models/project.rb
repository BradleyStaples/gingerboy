# == Schema Information
#
# Table name: projects
#
#  id            :integer          not null, primary key
#  display_order :integer
#  name          :string(255)
#  url           :string(255)
#  github        :string(255)
#  image         :string(255)
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Project < ActiveRecord::Base
  attr_accessible :description, :name, :image, :url, :display_order, :github
end
