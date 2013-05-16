class UpdateProjectsWithGithubLinks < ActiveRecord::Migration
  def up
    add_column :projects, :github, :string
    Project.reset_column_information
    Project.all.each do |p|
      p.update_attributes!(:github => "https://github.com/BradleyStaples/#{p.name.tr(' ', '-')}")
    end
  end

  def down
    remove_column :projects, :github
  end
end
