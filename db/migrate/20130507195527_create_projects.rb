class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :display_order
      t.string :name
      t.string :url
      t.string :github
      t.string :image
      t.text :description
      t.timestamps
    end
  end
end
