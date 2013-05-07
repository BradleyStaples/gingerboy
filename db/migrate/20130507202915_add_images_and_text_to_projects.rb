class AddImagesAndTextToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :blurb, :text, :default => nil
    add_column :projects, :thumb, :string, :default => nil
    add_column :projects, :image, :string, :default => nil
  end
end
