# == Schema Information
#
# Table name: projects
#
#  id            :integer          not null, primary key
#  display_order :integer
#  name          :string(255)
#  slug          :string(255)
#  url           :string(255)
#  github        :string(255)
#  image         :string(255)
#  blurb         :string(255)
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Project < ActiveRecord::Base
  attr_accessible :blurb, :description, :name, :slug, :url, :image, :github, :display_order
end
