class UpdateProjectsWithGithubLinks < ActiveRecord::Migration
  def up
    add_column :projects, :github, :string
    Project.find_by_name('Randle').update_attributes(:github => 'https://github.com/BradleyStaples/Randle')
    Project.find_by_name('Resizive').update_attributes(:github => 'https://github.com/BradleyStaples/Resizive')
    Project.find_by_name('Remember The Ginger').update_attributes(:github => 'https://github.com/BradleyStaples/Remember-The-Ginger')
  end

  def down
    remove_column :projects, :github_url
  end
end
