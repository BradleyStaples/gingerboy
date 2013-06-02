class UpdateProjectLinks < ActiveRecord::Migration
  def up
    Project.all.each do |p|
      p.url = p.url.gsub(/gingerboydev.com/, "bradleystapl.es")
      p.save!
    end
  end

  def down
    Project.all.each do |p|
      p.url = p.url.gsub(/bradleystapl.es/, "gingerboydev.com")
      p.save!
    end
  end
end

