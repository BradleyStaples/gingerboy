class UpdateProjectsWithGithubV2 < ActiveRecord::Migration
  def up
    Project.reset_column_information
    Project.all.each do |p|
      p.update_attributes!(:github => "https://github.com/BradleyStaples/#{p.name.tr(' ', '-')}")
    end
  end

  def down
  end
end
