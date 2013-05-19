class UpdateProjectsWithDisplayOrder < ActiveRecord::Migration
  def up
    add_column :projects, :display_order, :integer
    Project.reset_column_information

    p = Project.find_by_name('Fontbeast')
    p.display_order = 5
    p.save!

    p = Project.find_by_name('Randle')
    p.display_order = 4
    p.save!

    p = Project.find_by_name('Remember The Ginger')
    p.display_order = 2
    p.save!

    p = Project.find_by_name('Resizive')
    p.display_order = 1
    p.save!

    p = Project.find_by_name('Minesweeper')
    p.display_order = 3
    p.save!
  end

  def down
    remove_column :projects, :display_order
  end
end
